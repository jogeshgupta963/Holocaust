from flask import Blueprint
from sms.model import SMS

sms = Blueprint('sms',__name__)

@sms.route('/api/spam/sms/',methods=["POST"])
def detectSms():
    sms = SMS()
    return sms.detectSpamSms()