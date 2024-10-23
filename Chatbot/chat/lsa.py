import os.path
from gensim import corpora
from gensim.models import LsiModel
from nltk.tokenize import RegexpTokenizer
from nltk.corpus import stopwords
from nltk.stem.porter import PorterStemmer
from gensim.models.coherencemodel import CoherenceModel
import matplotlib.pyplot as plt


def preprocess_data(line):
    documents_list = []
    
    text = line.strip()
    documents_list.append(text)
    tokenizer = RegexpTokenizer(r'\w+')
    en_stop = set(stopwords.words('english'))
    p_stemmer = PorterStemmer()
    texts = []
    for i in documents_list:
        raw = i.lower()
        tokens = tokenizer.tokenize(raw)
        stopped_tokens = [i for i in tokens if not i in en_stop]
        stemmed_tokens = [p_stemmer.stem(i) for i in stopped_tokens]
        texts.append(stemmed_tokens)
    return texts


def prepare_corpus(doc_clean):
    dictionary = corpora.Dictionary(doc_clean)
    #print(dictionary)
    doc_term_matrix = [dictionary.doc2bow(doc) for doc in doc_clean]
    return dictionary, doc_term_matrix


def create_gensim_lsa_model(doc_clean, number_of_topics, words):
    dictionary, doc_term_matrix = prepare_corpus(doc_clean)
    lsamodel = LsiModel(
        doc_term_matrix, num_topics=number_of_topics, id2word=dictionary)
    return(lsamodel.print_topics(num_topics=number_of_topics, num_words=words))

def lsa_fetch(sample_text):
    number_of_topics = 1
    words = 4
    clean_text = preprocess_data(sample_text)
    Keywords = create_gensim_lsa_model(clean_text, number_of_topics, words)
    str_keywords = ''.join(map(str, Keywords))
    Final_keywords = str_keywords.split("\"")
    return Final_keywords[1::2]

#sample_text = "Give attendance of prakash? please show me attendance of prakash."

#print lsa_fetch(sample_text)
