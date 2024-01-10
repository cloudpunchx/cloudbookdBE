from app import app
from flask import make_response, jsonify, request
from helpers.dbhelpers import run_statement
from helpers.helpers import check_data


# GET User's Yearly Reading Goal
@app.get("/api/reading-challenge")
def get_user_reading_goal():
    """
    Expects the following required parameters in the request headers:
    - Token
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


# POST Set User's Yearly Reading Goal
@app.post("/api/reading-challenge")
def post_user_reading_goal():
    """
    Expects 3 Args:
    Token, Reading Goal (number), Curr Year (number)
    """
    required_header = ["token"]
    required_data = ["readingGoal", "currYear"]
    check_result = check_data(request.headers, required_header)
    if check_result != None:
        return check_result
    token = request.headers.get("token")
    check_result = check_data(request.json, required_data)
    if check_result != None:
        return check_result
    readingGoal = request.json.get("readingGoal")
    currYear = request.json.get("currYear")
    result = run_statement(
        "CALL post_user_reading_goal(?,?,?)", [token, readingGoal, currYear]
    )
    if type(result) == list:
        if result[0][0] == 1:
            return make_response(
                jsonify("Successfully set reading challenge goal."), 200
            )
        elif result[0][0] == 0:
            # Something went wrong on the server
            return make_response(
                jsonify("Error: Internal server error. Please try again."), 500
            )
    elif "user_reading_challenge_UN(oneGoalPerYearPerUser)" in result:
        return make_response(
            jsonify(
                "Error: Users can only set 1 reading challenge goal per calendar year. Please see 'Edit Goal' to make changes."
            ),
            400,
        )
    elif "Incorrect integer value" in result:
        return make_response(
            jsonify("Error: Invalid reading goal. Please enter a valid integer value."),
            400,
        )
    elif "Data truncated for column" in result:
        return make_response(
            jsonify("Error: Invalid reading goal. Please enter a valid integer value."),
            400,
        )
    else:
        return make_response(jsonify(result), 500)


# PATCH Edit User's Yearly Reading Goal
@app.patch("/api/reading-challenge")
def patch_user_reading_goal():
    """
    Expects 3 Args:
    Token, Reading Goal (number), Curr Year
    """
    required_header = ["token"]
    required_data = ["readingGoal", "currYear"]
    check_result = check_data(request.headers, required_header)
    if check_result != None:
        return check_result
    token = request.headers.get("token")
    check_result = check_data(request.json, required_data)
    if check_result != None:
        return check_result
    readingGoal = request.json.get("readingGoal")
    currYear = request.json.get("currYear")
    result = run_statement(
        "CALL patch_user_reading_goal(?,?,?)", [token, readingGoal, currYear]
    )
    if type(result) == list:
        if result[0][0] == 1:
            return make_response(
                jsonify("Successfully edited reading challenge goal."), 200
            )
        elif result[0][0] == 0:
            # Something went wrong on the server
            return make_response(
                jsonify("Error: Please set reading goal before editing goal."), 500
            )
    elif "Incorrect integer value" in result:
        return make_response(
            jsonify("Error: Invalid reading goal. Please enter a valid integer value."),
            400,
        )
    elif "Data truncated for column" in result:
        return make_response(
            jsonify("Error: Invalid reading goal. Please enter a valid integer value."),
            400,
        )
    else:
        return make_response(jsonify(result), 500)


# DELETE User Reading Challenge Goal
@app.delete("/api/reading-challenge")
def del_user_reading_goal():
    """
    Expects 2 Args:
    Token, Curr Year
    """
    required_header = ["token"]
    required_data = ["currYear"]
    check_result = check_data(request.headers, required_header)
    if check_result != None:
        return check_result
    token = request.headers.get("token")
    check_result = check_data(request.json, required_data)
    if check_result != None:
        return check_result
    currYear = request.json.get("currYear")
    result = run_statement("CALL delete_user_reading_goal(?,?)", [token, currYear])
    if type(result) == list:
        if result[0][0] == 1:
            return make_response(
                jsonify("Deleted reading challenge goal for current year."), 201
            )
        elif result[0][0] == 0:
            return make_response(jsonify("No goal has been set for this year."), 400)
    else:
        return make_response(
            jsonify("Something unexpected has gone wrong, please try again."), 500
        )
