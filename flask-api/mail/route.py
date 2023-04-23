from flask import Blueprint
from mail.model import Email

email = Blueprint('email',__name__)

@email.route('/api/spam/email/',methods=["POST"])
def detectEmail():
    email = Email()
    return email.detectSpamEmail()
