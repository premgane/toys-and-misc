#!/usr/bin/env python

from nltk.tokenize.treebank import TreebankWordTokenizer
from nltk.stem import PorterStemmer, WordNetLemmatizer
from nltk import pos_tag, ne_chunk, Tree

import re

_word_tokenizer = TreebankWordTokenizer()
_stemmer = PorterStemmer()
_lemmatizer = WordNetLemmatizer()


text = "At 12:35 a.m. ET (1735 GMT) the Dow Jones industrial average .DJI was up 211.89 points, or 1.31 percent, at 16,363.3."

# tokenize sentence
cleaned_sentence = re.sub(r'\W', ' ', text)
tokens = _word_tokenizer.tokenize(cleaned_sentence)

tokens_stemmed = [_stemmer.stem(word.lower()) for word in tokens]

print tokens_stemmed