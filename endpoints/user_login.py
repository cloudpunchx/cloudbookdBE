from app import app
import bcrypt
from flask import make_response, jsonify, request
from helpers.dbhelpers import run_statement
from helpers.helpers import check_data


# User Log In
@app.post("/api/user-login")
def post_user_login():
    """
    Expects 2 Args
    Email, Password
    """
    required_data = ["email", "password"]
    check_result = check_data(request.json, required_data)
    if check_result is not None:
        return check_result

    email = request.json.get("email")
    password = request.json.get("password")
    result = run_statement("CALL get_user_login(?)", [email])

    if type(result) == list and result:
        user_id = result[0][0]
        password_return = result[0][1]
        if bcrypt.checkpw(password.encode(), password_return.encode()):
            result = run_statement("CALL post_user_login(?)", [user_id])
            if type(result) == list:
                user_id = result[0][0]
                token = result[0][1]
                return make_response(jsonify(user_id, token), 201)
            else:
                # Handle unexpected errors during post_user_login call
                return make_response(
                    jsonify("Error during user session creation, please try again."),
                    500,
                )
        else:
            # Password does not match
            return make_response(jsonify("Invalid credentials. Please try again."), 401)
    else:
        # User does not exist
        return make_response(jsonify("User not found. Check email and try again."), 404)


# DELETE /user-login (logout)
@app.delete("/api/user-login")
def user_logout():
    """
    Expects required parameter in the request headers:
    - Token
    """
    required_data = ["token"]
    check_result = check_data(request.headers, required_data)
    if check_result != None:
        return check_result
    token = request.headers.get("token")
    result = run_statement("CALL delete_user_login(?)", [token])
    if type(result) == list:
        if result[0][0] == 1:
            return make_response(jsonify("Successfully logged out."), 201)
        elif result[0][0] == 0:
            return make_response(jsonify("Error, invalid token in request."), 400)
    else:
        return make_response(
            jsonify("Something unexpected has gone wrong, please try again."), 500
        )
