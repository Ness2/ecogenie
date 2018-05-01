################################################################################################################
#
# ecogenie forecast calculations
#
################################################################################################################
clean.data <- create.data.clean("2012", "2017")

sum.missing.data <- function(clean.data = clean.data) {
  tmp.list.1 <- list()
  pb <- txtProgressBar(min = 0, max = length(clean.data), style = 3) # this is the progress bar
  for (i in 1:length(clean.data)) {
    tmp.list.1[[i]] <- apply(clean.data[[i]], 2, function(x) sum(is.na(x)))
    setTxtProgressBar(pb, i) # set progress bar position
  }
  close(pb) # close progress bar
  tmp.list.1
}