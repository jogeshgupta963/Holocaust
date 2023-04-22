from flask import request,jsonify,make_response
# from nlp. import classify
import pickle 
class Email():

    def detectSpamEmail(self):
        
         # reading req 
        data= request.get_json()
        # validating data
        if not data["sms"]:
            return jsonify({
                "error":"Invalid data"
        }) 
        file = "C:/Users/Lenovo/Desktop/kavach/Holocaust/flask-api/nlp/sms/spam.pkl"

        fileObj = open(file, "rb")

        # Unpickle the objects

        model = pickle.load(fileObj)
        # prediction =  classify(data["sms"],model)
        
        resp = dict({
            "success":True,
            "data":prediction
        })
        return resp
