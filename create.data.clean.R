################################################################################################################
#
# create data clean -> clean.data
#
################################################################################################################
create.data.clean <- function(yearStart, yearEnd) { # only works if timeFrameSequence has same years
  yearIndex <- as.numeric(yearStart):as.numeric(yearEnd)
  tmp.list.1 <- list(yearIndex)
  tmp.list.2 <- list(length = length(tmp.list.1))
  for (i in 1:length(yearIndex)) {
    yearIndexEnd <- yearIndex[[i]] + 1
    tmp.list.1[[i]] <- paste("Y", yearIndex[[i]], yearIndexEnd, sep = "_")
    tmp.list.2[[i]] <- energyTimeFrameSequence[[i]] %>%
      left_join(clean.data.selection)
  }
  names(tmp.list.2) <- tmp.list.1
  tmp.list.2
}