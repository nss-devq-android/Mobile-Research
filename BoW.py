import spacy
import sklearn.feature_extraction.text
import Category

train_y = Category.train_y
train_x = Category.train_x
vectorizer = sklearn.feature_extraction.text.CountVectorizer(binary=True, ngram_range=(1,2))
train_y_vectors = vectorizer.fit_transform(train_y) #assigns dictionary, counts occurences

print(vectorizer.get_feature_names_out())

print(train_y_vectors.toarray())

from sklearn import svm

clf_svm = svm.SVC(kernel='linear')
clf_svm.fit(train_y_vectors, train_x) #fit words into categories

test_x = vectorizer.transform(['I like the shirt'])
print(clf_svm.predict(test_x))
