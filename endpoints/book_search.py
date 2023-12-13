from app import app
import bcrypt
from flask import make_response, jsonify, request
from helpers.dbhelpers import run_statement
from helpers.helpers import check_data

# wait - I THINK THIS PAGE WILL BE DELETED SINCE I AM USING THE API FROM GOOGLE BOOKS, NOT MY OWN BACK END, SO JUST NEED TO CONFIG FE THEN TEST, THEN DEL THIS


# GET book search - using Google Books API
@app.get("/api/book-search")
def search_book():
    """
    Required
    query
    """
    query = request.args.get("query")
    # NOT 100% SURE OF THESE KEYS - RUN GET REQ THEN RECHECK
    keys = ["kind", "id", "etag", "selfLink", "volumeInfo"]
    result = run_statement("CALL get_book_search(?)", [query])
    response = []
    if type(result) == list:
        if result == []:
            return make_response(
                jsonify("Something went wrong, please try again."), 500
            )
        for book in result:
            response.append(dict(zip(keys, book)))
        return make_response(jsonify(response), 200)
    else:
        return make_response(jsonify("Something went wrong, please try again."), 500)
