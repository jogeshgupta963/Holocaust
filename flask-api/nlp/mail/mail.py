
import numpy as np
from bs4 import BeautifulSoup
from tensorflow import keras

from tensorflow.keras.preprocessing.text import Tokenizer
from tensorflow.keras.preprocessing.sequence import pad_sequences
# Model = keras.models.load_model('/home/jogesh/Documents/Github/Holocaust/flask-api/nlp/email/model.h5')
Model = keras.models.load_model('C:/Users/Lenovo/Desktop/kavach/Holocaust/flask-api/nlp/mail/model.h5')

Tokenizer = Tokenizer(num_words = 8195,oov_token="<000>")

# stopwords for precprocessing of data
stopwords = [ "a", "about", "above", "after", "again", "against", "all", "am", "an", "and", "any", "are", "as", "at", "be", "because", "been", "before", "being", "below", "between", "both", "but", "by", "could", "did", "do", "does", "doing", "down", "during", "each", "few", "for", "from", "further", "had", "has", "have", "having", "he", "he'd", "he'll", "he's", "her", "here", "here's", "hers", "herself", "him", "himself", "his", "how", "how's", "i", "i'd", "i'll", "i'm", "i've", "if", "in", "into", "is", "it", "it's", "its", "itself", "let's", "me", "more", "most", "my", "myself", "nor", "of", "on", "once", "only", "or", "other", "ought", "our", "ours", "ourselves", "out", "over", "own", "same", "she", "she'd", "she'll", "she's", "should", "so", "some", "such", "than", "that", "that's", "the", "their", "theirs", "them", "themselves", "then", "there", "there's", "these", "they", "they'd", "they'll", "they're", "they've", "this", "those", "through", "to", "too", "under", "until", "up", "very", "was", "we", "we'd", "we'll", "we're", "we've", "were", "what", "what's", "when", "when's", "where", "where's", "which", "while", "who", "who's", "whom", "why", "why's", "with", "would", "you", "you'd", "you'll", "you're", "you've", "your", "yours", "yourself", "yourselves"] 

def classify(text):
    text = text.lower() # lowercase
    # remove stopwords
    for stop in stopwords:
        text = text.replace(f" {stop} "," ")
    Tokenizer.fit_on_texts(text)
    tokenized_content = Tokenizer.texts_to_sequences([text])
    # padding of the text
    padded_text = pad_sequences(
        tokenized_content,
        padding = 'post',
        truncating = 'post',
        maxlen = 512
    )
    data = np.array(padded_text)
    
    predictions = Model.predict(data)
    
    
    return predictions[0].tolist()


# text = "This is a sample text to predict sentiment on."
# test = preprocess(text)
# predictions = Model.predict(test)
# print(f"predictions {predictions}")
