import spacy
from Category import train_x, train_y, Category #from [class name] import var 1, var 2, class
from sklearn import svm



nlp = spacy.load("en_core_web_md") #medium library

docs = [nlp(text) for text in train_y] #each is a nlp representation (averages word embeddings, words in ech sentence) of sentences defined in train_y
print(docs[0].vector) #array that symbolizes the word vector for first sentence in train_y

train_y_word_vectors = [x.vector for x in docs] #average vector of each sentence

#Step 1: Setup Linear Kernel
clf_svm_wv = svm.SVC(kernel='linear')
#Step 2: Fit Data into Categories
clf_svm_wv.fit(train_y_word_vectors, train_x) #fit words into categories (train_x) using word vectors (train_y_word_vectors)
#Step 3: Predict using parameters/categories fit created (train_x)
#see in ln 27

#Test Scenario
test_x = ["i love the story"]
test_docs = [nlp(x) for x in test_x] #nlp representation of test_x
test_x_word_vectors = [x.vector for x in test_docs] #word vector representation of nlp
print(clf_svm_wv.predict(test_x_word_vectors))




