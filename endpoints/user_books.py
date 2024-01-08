from app import app
import bcrypt
from flask import make_response, jsonify, request
from helpers.dbhelpers import run_statement
from helpers.helpers import check_data


# POST add to user books (tbr, currently reading, finished reading depending on optional args)
@app.post("/api/user-books")
def post_user_books():
    """
    Expects 5 Args:
    Token, Book Id (char), Book Title (char), Author (char), Book Cover (char)
    Optional Args:
    Date Started (YYYY-MM-DD), Date Finished (YYYY-MM-DD), Shelves (char), Rating (decimal 0.5-5)
    """
    required_header = ["token"]
    required_data = ["bookId", "bookTitle", "author", "bookCover"]
    check_result = check_data(request.headers, required_header)
    if check_result != None:
        return check_result
    token = request.headers.get("token")
    check_result = check_data(request.json, required_data)
    if check_result != None:
        return check_result
    bookId = request.json.get("bookId")
    bookTitle = request.json.get("bookTitle")
    author = request.json.get("author")
    bookCover = request.json.get("bookCover")
    dateStarted = request.json.get("dateStarted")
    dateFinished = request.json.get("dateFinished")
    shelves = request.json.get("shelves")
    rating = request.json.get("rating")
    result = run_statement(
        "CALL post_user_books(?,?,?,?,?,?,?,?,?)",
        [
            token,
            bookId,
            bookTitle,
            author,
            bookCover,
            dateStarted,
            dateFinished,
            shelves,
            rating,
        ],
    )
    if type(result) == list:
        if result[0][0] == 1:
            return make_response(jsonify("Successfully saved to user books."), 200)
        elif result[0][0] == 0:
            # Something went wrong on the server
            return make_response(
                jsonify("Error: Internal server error. Please try again."), 500
            )
    else:
        return make_response(jsonify(result), 500)
