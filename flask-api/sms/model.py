from flask import request,jsonify,make_response
from nlp.sms.sms import classify
import pickle 
# with open('./spam.pkl', 'rb') as f:
#     model = pickle.load(f)
class SMS():

    def detectSpamSms(self):
        
         # reading req 
        data= request.get_json()
        # validating data
        if not data["sms"]:
            return jsonify({
                "error":"Invalid data"
        }) 
        file = "/home/jogesh/Documents/Github/Holocaust/flask-api/nlp/sms/spam.pkl"

        fileObj = open(file, "rb")

        # Unpickle the objects

        model = pickle.load(fileObj)
        prediction =  classify(data["sms"],model)
        
        resp = dict({
            "success":True,
            "data":prediction
        })
        return resp
