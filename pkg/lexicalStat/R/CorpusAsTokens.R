#
# A CorpusLinear is a sub-type of corpus where each actual tokens, in their textual
# order, are given.
#

setClass("CorpusAsTokens", contains="Corpus");

############################################################
##
##
## ngram
##
##
############################################################

setGeneric("ngram", function(corpus, n=3, sep=" ") {
  return(standardGeneric("ngram"));
})

############################################################
##
##
## Given a corpus with part, extract a subcorpus containing
## tokens found in a given slice in the parts and containing
## a given lexical type.
##
##
############################################################

setGeneric("tactique.subcorpus", function(corpus, slice=1, nslice=5, word, method="ps(s,w)") {
  return(standardGeneric("tactique.subcorpus"));
})

############################################################
##
##
## Given a corpus with parts, it is transformed into a corpus
## where each part contains the token in a given slice in the previous parts.
##
##
############################################################

setGeneric("slice", function(corpus, n=10) {
  return(standardGeneric("slice"));
})

############################################################
##
##
## Kwic = keyword in context, or concordancer.
##
##
############################################################

setGeneric("kwic", function(x, pattern, left, right) {
  return(standardGeneric("kwic"));
})