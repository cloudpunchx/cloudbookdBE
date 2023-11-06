from app import app
import bcrypt
import uuid
from flask import make_response, jsonify, request
from helpers.dbhelpers import run_statement
from helpers.helpers import check_data


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


# POST User Profile, (Sign Up) then logs in (user session)
@app.post("/api/user")
def post_user_signup():
    """
    Expects 5 Args:
    username, firstName, lastName, email, password
    """
    required_data = ["username", "firstName", "lastName", "email", "password"]
    check_result = check_data(request.json, required_data)
    if check_result != None:
        return check_result
    username = request.json.get("username")
    first_name = request.json.get("firstName")
    last_name = request.json.get("lastName")
    email = request.json.get("email")
    password = request.json.get("password")
    salt = bcrypt.gensalt()
    hash_result = bcrypt.hashpw(password.encode(), salt)
    result = run_statement(
        "CALL post_user_signup(?,?,?,?,?)",
        [username, first_name, last_name, email, hash_result],
    )
    if "user_UN_username" in result:
        return make_response(
            jsonify("This username is already in use, please enter another username."),
            409,
        )
    elif "user_UN_email" in result:
        return make_response(
            jsonify(
                "This email is already in use, please enter another email or click forgot password."
            ),
            409,
        )
    elif "user_CHECK_email_format" in result:
        return make_response(jsonify("Email format must be '__@__.__'"), 409)
    elif "octet_length(`username`) <= 20" in result:
        return make_response(jsonify("Username can only be 20 characters max."), 409)
    elif "DATA ERROR: Data too long for column 'username_input' at row 0" in result:
        return make_response(jsonify("Username can only be 20 characters max."), 409)
    elif type(result) == list:
        if result == []:
            return make_response(
                jsonify("Something went wrong, please try again."), 500
            )
        result = run_statement("CALL post_user_login(?)", [result[0][0]])
        if type(result) == list:
            user_id = result[0][0]
            token = result[0][1]
            return make_response(jsonify(user_id, token), 201)
        elif result[0][0] == 0:
            return make_response(
                jsonify("Something went wrong, please try again."), 500
            )