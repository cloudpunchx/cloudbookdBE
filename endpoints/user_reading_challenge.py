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
    key = ["ReadingGoal"]
    result = run_statement("CALL get_user_reading_goal(?)", [token])
    if type(result) == list:
        if result == []:
            return make_response(
                jsonify("User has not set a reading challenge goal."), 404
            )
        for userReadingGoal in result:
            zipped = zip(key, userReadingGoal)
            userReadingGoal = dict(zipped)
            return make_response(jsonify(userReadingGoal), 200)
    else:
        return make_response(jsonify("Invalid token in request."), 500)
