from nltk.tokenize import word_tokenize
from nltk.corpus import stopwords

stop_words = stopwords.words('english')

phrase = "Here is an example sentence removing stop words such as this"

words = word_tokenize(phrase)

stripped_phrase = []
for word in words:
    if word not in stop_words:
        stripped_phrase.append(word)

print(" ".join(stripped_phrase))
#Usage?: Removing stop words for word vectorization so average is much clearer