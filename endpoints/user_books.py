from app import app
from flask import make_response, jsonify, request
from helpers.dbhelpers import run_statement
from helpers.helpers import check_data


# GET user books - from tbr, currently reading, read, and specific books with book Id
@app.get("/api/user-books")
def get_user_books():
    """
    Expects the following required parameters in the request headers:
    - Token

    Optional Search Params:
    - bookId (string)
    - readingStatus (string)
    """
    required_header = ["token"]
    check_result = check_data(request.headers, required_header)
    if check_result is not None:
        return check_result
    token = request.headers.get("token")
    bookId = request.args.get("bookId")
    if bookId is None:
        bookId = None
    readingStatus = request.args.get("readingStatus")
    if readingStatus is None:
        readingStatus = None
    key = [
        "bookId",
        "Title",
        "Author",
        "Cover_Img",
        "Reading_Status",
        "Date_Started",
        "Date_Finished",
        "Rating",
        "Times_Read",
    ]
    result = run_statement("CALL get_user_books(?,?,?)", [token, bookId, readingStatus])

    # Check if the result is a list (multiple user books)
    if isinstance(result, list):
        if not result:
            return make_response(
                jsonify("User does not have books with this reading status."), 404
            )

        user_books_list = []
        for userBooks in result:
            zipped = zip(key, userBooks)
            userBooks_dict = dict(zipped)
            user_books_list.append(userBooks_dict)

        return make_response(jsonify(user_books_list), 200)
    elif result == 0:
        return make_response(
            jsonify("User does not have this book in their shelf."), 404
        )
    elif result == 1:
        return make_response(jsonify("Book not found."), 404)
    else:
        return make_response(jsonify("Invalid token in request."), 500)


# POST add to user books (tbr, currently reading, finished reading depending on optional args)
@app.post("/api/user-books")
def post_user_books():
    """
    Expects the following required parameters in the request headers:
    - Token

    Expects the following data in the request body:
    - bookId (string)
    - bookTitle (string)
    - author (string)
    - bookCover (string)

    Optional data:
    - readingStatus (string)
    - dateStarted (string, format: YYYY-MM-DD)
    - dateFinished (string, format: YYYY-MM-DD)
    - rating (decimal, range: 0.5-5)
    - timesRead (integer)
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
    readingStatus = request.json.get("readingStatus")
    dateStarted = request.json.get("dateStarted")
    dateFinished = request.json.get("dateFinished")
    rating = request.json.get("rating")
    timesRead = request.json.get("timesRead")
    result = run_statement(
        "CALL post_to_user_books(?,?,?,?,?,?,?,?,?,?)",
        [
            token,
            bookId,
            bookTitle,
            author,
            bookCover,
            readingStatus,
            dateStarted,
            dateFinished,
            rating,
            timesRead,
        ],
    )
    if type(result) == list:
        if result[0][0] == 1:
            return make_response(jsonify("Successfully saved to user books."), 200)
        elif result[0][0] == 0:
            return make_response(
                jsonify("Error: Internal server error. Please try again."), 500
            )
    elif "user_books_UN_bookId_userId" in result:
        return make_response(
            jsonify("Error: User already has this book in their shelves."),
            400,
        )
    elif (
        "`user_books_CHECK_reading_status` failed for `cloudbookd_db`.`user_books"
        in result
    ):
        return make_response(
            jsonify("Error: This reading status is not a valid."),
            400,
        )
    else:
        return make_response(jsonify(result), 500)
