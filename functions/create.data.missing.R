#####################################################################################
#
# ecogenie calculate missing data
#
#####################################################################################
create.data.missing <- function(yearStart, yearEnd) { # only works if timeFrameSequence has same years
  yearIndex <- as.numeric(yearStart):as.numeric(yearEnd)
  tmp.list.1 <- list(yearIndex)
  tmp.list.2 <- list(length = length(tmp.list.1))
  for (i in 1:length(yearIndex)) {
    yearIndexEnd <- yearIndex[[i]] + 1
    tmp.list.1[[i]] <- paste("Y", yearIndex[[i]], yearIndexEnd, sep = "_")
    tmp.list.2[[i]] <- energyTimeFrameSequence[[i]] %>%
      anti_join(clean.data.selection)
    tmp.list.2[[i]]$end <- tmp.list.2[[i]]$iteration_stamp + 60
  }
  names(tmp.list.2) <- tmp.list.1
  tmp.list.2
}
