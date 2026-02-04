from flask import flask

app = fask("__name__")

@app.route('/')
def home():
    return "Github CI?CD Pipeline working"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)