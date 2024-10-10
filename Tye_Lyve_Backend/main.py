from flask import Flask, request
from flask_cors import CORS
from flask_mail import Mail
app = Flask("__main__")
CORS(app)

@app.route("/")
def index():
    return "Good"

@app.route("/sign_up", methods=["POST", "GET"])
def home():
    data = request.get_json()
    return "All Good", 200

if __name__ == "__main__":
    app.run(debug=True)