#####################################################################################
#
# Summary data function
#
#####################################################################################
create.data.summary <- function(yearStart, yearEnd) { # only works if timeFrameSequence has same years
  yearIndex <- as.numeric(yearStart):as.numeric(yearEnd)
  tmp.list.1 <- list(yearIndex)
  tmp.list.2 <- list(length = length(tmp.list.1))
  for (i in 1:length(yearIndex)) {
    yearIndexEnd <- yearIndex[[i]] + 1
    tmp.list.1[[i]] <- paste("Y", yearIndex[[i]], yearIndexEnd, sep = "_")
    tmp.list.2[[i]] <- clean.data[[i]] %>%
      group_by(iteration_stamp = cut(iteration_stamp, "1 year")) %>%
      summarise(electricity.sum = sum(electricity),
                ambient_temperature.min = min(ambient_temperature),
                ambient_temperature.max = max(ambient_temperature),
                ambient_temperature.avg = mean(ambient_temperature),
                gas_flow.sum = sum(gas_flow))
  }
  names(tmp.list.2) <- tmp.list.1
  tmp.list.2
}