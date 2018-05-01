#####################################################################################
#
# function rmNullObs.BIG
#
#####################################################################################

## Recursively step down into list, removing all such objects 
rmNullObs.BIG <- function(x) {
  proBar <- txtProgressBar(min = 0, max = 100, style = 3)
  x <- Filter(Negate(is.NullOb), x)
    lapply(x, function(x) {
      if (is.list(x)) {
        rmNullObs(x)
        } 
      else {
        x
        }
      })
  setTxtProgressBar(proBar, 100)
  close(proBar)
  x
}

