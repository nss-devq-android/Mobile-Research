import nltk

nltk.download('wordnet')
nltk.download('stopwords')
nltk.download('punkt')
nltk.download('punkt_tab')

from nltk.tokenize import word_tokenize #break sentences into words
from nltk.stem import PorterStemmer #does the actual stemming

stemmer = PorterStemmer()
#strip out punctuation -> does it as its own word
phrase = "reading the books"
words = word_tokenize(phrase)

stemmed_words = []
for word in words:
    stemmed_words.append(stemmer.stem(word))

print(" ".join(stemmed_words))
#"read the book"
#"stories" -> "stori"




