from app import app
import bcrypt 
from flask import make_response, jsonify, request
from helpers.dbhelpers import run_statement
from helpers.helpers import check_data

@app.post('/api/user-login')
def post_user_login():
    """
    Expects 2 Args
    Email, Password
    """
    required_data = ['email', 'password']
    check_result = check_data(request.json, required_data)
    if check_result != None:
        return check_result
    email = request.json.get('email')
    password = request.json.get('password')
    result = run_statement("CALL get_user_login(?)", [email])
    if(type(result) == list):
        if result == []:
            return make_response(jsonify('Incorrect email address, please re-enter email.'), 400)
        password_return = result[0][1]
        if (bcrypt.checkpw(password.encode(), password_return.encode())):
            result = run_statement("CALL post_user_login(?)", [result[0][0]])
            if (type(result) == list):
                user_id = result[0][0]
                token = result[0][1]
                return make_response(jsonify(user_id, token), 201)
        else:
            return make_response(jsonify("Error, please try again."), 400)