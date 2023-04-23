from flask import Flask
# from extentions import mongo
from sms.route import sms
from mail.route import email
# from mail.route

app = Flask(__name__)

# app.config["MONGO_URI"] = "mongodb://172.17.0.2:27017/myDatabase"

# app.config["MONGO_URI"] = "mongodb://admin-mongo-srv:27017/myDatabase"
# mongo.init_app(app)
app.register_blueprint(sms)
app.register_blueprint(email)
@app.route('/api/spam')
def index():
    return "Server is running"

if __name__ == "__main__":
    app.run(host='0.0.0.0',debug=True)