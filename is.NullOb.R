## A helper function that tests whether an object is either NULL _or_ 
## a list of NULLs
is.NullOb <- function(x) is.null(x) | all(sapply(x, is.null))