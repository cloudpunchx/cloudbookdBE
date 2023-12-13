from app import app
from flask import make_response, jsonify, request
from helpers.dbhelpers import run_statement
from helpers.helpers import check_data


# GET User's Yearly Reading Goal
@app.get("/api/reading-challenge")
def get_user_reading_goal():
    """
    Required:
    Token
    """
    required_data = ["token"]
    check_result = check_data(request.headers, required_data)
    if check_result != None:
        return check_result
    token = request.headers.get("token")
    keys = ["ID", "ReadingGoal", "Year"]
    result = run_statement("CALL get_user_reading_goal(?)", [token])
    if type(result) == list:
        if result == []:
            return make_response(jsonify("Invalid token in request."), 500)
        for goal in result:
            zipped = zip(keys, goal)
            goal = dict(zipped)
            return make_response(jsonify(goal), 200)
    else:
        return make_response(jsonify("Something went wrong, please try again."), 500)
