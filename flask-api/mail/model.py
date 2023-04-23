from flask import request,jsonify
from nlp.mail.mail import classify
class Email():

    def detectSpamEmail(self):
        
         # reading req 
        data= request.get_json()
        # validating data
        if not data["content"]:
            return jsonify({
                "error":"Invalid data"
        }) 
        
        prediction =  classify(data["content"])
        # print(prediction)
        resp = dict({
            "success":True,
            "data":prediction
        })
        return resp
