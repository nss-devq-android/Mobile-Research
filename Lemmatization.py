from nltk.stem import WordNetLemmatizer #reduce words to simpler form
from nltk.tokenize import word_tokenize #break sentences into words
from nltk.stem import PorterStemmer #does the actual stemming

lemmatizer = WordNetLemmatizer()

phrase = "reading the books"
words = word_tokenize(phrase)

lemmatized_words = []
for word in words:
    lemmatized_words.append(lemmatizer.lemmatize(word))
    #part of speech taging, like pos="v" so it converts all to base form
    #pos=n,v,etc. converts only those words, default is noun

" ".join(lemmatized_words)