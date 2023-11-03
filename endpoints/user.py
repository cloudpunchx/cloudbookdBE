from app import app
import bcrypt
from flask import make_response, jsonify, request
from helpers.dbhelpers import run_statement
from helpers.helpers import check_data

# Have not created stored procedure yet
# GET User Profile
@app.get("/api/user")
def get_user_profile():
    """
    Expects 1 Arg:
    token
    """
    required_data = ["token"]
    check_result = check_data(request.headers, required_data)
    if check_result != None:
        return check_result
    token = request.headers.get("token")
    keys = [
        "userId",
        "username",
        "firstName",
        "lastName",
        "email",
        "password",
        "bio",
        "profileImg",
        "createdAt",
    ]
    result = run_statement("CALL get_user_profile(?)", [token])
    if type(result) == list:
        if result == []:
            return make_response(jsonify("Invalid token in request."), 500)
        for user in result:
            zipped = zip(keys, user)
            user = dict(zipped)
            return make_response(jsonify(user), 200)
    else:
        return make_response(jsonify("Something went wrong, please try again."), 500)