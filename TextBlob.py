from textblob import TextBlob

phrase = "Morgan Stanley Lowers Apple Price Target to $355, Citing Limited Near-Term Catalyst Upside"
posphrase = "Apple Stock is one of the worst to buy ahead of Oct. 13"
negphrase = "Apple Stock is the best buy for the next five years"
tb_phrase = TextBlob(phrase) #str -> TextBlob object
pos_phrase = TextBlob(posphrase)
neg_phrase = TextBlob(negphrase)

#spell correct
print(tb_phrase.correct())

#List of (word, noun, verb, etc.)
print(tb_phrase.correct().tags)

#sentiment -> (polarity=pos or neg, subjectivity=fact or opinion)
#great to sort news opinions w/ word vectors0
print(tb_phrase.correct().sentiment)
print("pos: ")
print(pos_phrase.correct().sentiment)
print("neg: ")
print(neg_phrase.correct().sentiment)