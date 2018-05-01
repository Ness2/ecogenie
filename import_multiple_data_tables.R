#####################################################################################
#
# import multiple data tables
#
#####################################################################################
# import data function
#  - pb is progress  bar
#  - tryCatch is to avoid problems with empty sets
#  - ... is for implementing extra read.table arguments
import_multiple_data_tables <- function(mypath, mypattern, ...) {
  setwd(mypath)
  tmp.list.1 <- list.files(mypath, pattern = mypattern)
  tmp.list.2 <- list(length = length(tmp.list.1))
  pb <- txtProgressBar(min = 0, max = length(tmp.list.1), style = 3)
  for (i in 1:length(tmp.list.1)) {
    tmp.list.2[[i]] <- tryCatch(read.table(tmp.list.1[i], ...), error = function(e) NULL)
    setTxtProgressBar(pb, i)
  }
  close(pb)
  # names(tmp.list.2) <- tmp.list.1
  tmp.list.2
}