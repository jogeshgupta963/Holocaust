import pickle

# file = "/home/jogesh/Documents/Github/Holocaust/flask-api/nlp/spam.pkl"
# with open(file, 'rb') as f:
#     model = pickle.load(f)

m = "Congratulations! You have been selected to receive a free trip to the Bahamas. Claim your prize now by clicking on the link below. Don't miss this amazing opportunity!"
def classify(x,model):
 
  pred = model.predict_proba([x])
  return pred[0].tolist()

# classify(m)


