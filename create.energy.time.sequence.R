#####################################################################################
#
# create energy time sequence
#  - for energy-years
#  - start of energy-year is on April 1st
#  - end of energy-year is on March 31st
#
#####################################################################################
create.energy.time.sequence <- function(yearStart = "2012", yearEnd = "2017", monthStart = "04", monthEnd = "03", 
                                        dayStart = "01", dayEnd = "31", hourStart = "00", hourEnd = "23",
                                        minStart = "00", minEnd = "59", secondStart = "00", secondEnd = "59",
                                        by = "min", format = "%Y-%m-%d %H:%M", tz = "UTC",
                                        ...) { # WARNING: by = "sec" may cause computation errors
  yearIndex <- as.numeric(yearStart):as.numeric(yearEnd) # these are the energy-year starting years
  tmp.list.1 <- list(length = length(yearIndex)) # create temporary list for list names
  tmp.list.2 <- list(length = length(yearIndex)) # create a list of energy-years
  pb <- txtProgressBar(min = 0, max = length(yearIndex), style = 3) # this is the progress bar
  for (i in 1:length(yearIndex)) { # this for loop creates the time sequences of the energy-years
    yearIndexEnd <- yearIndex[[i]] + 1 # an energy-year ends in the year after the starting year
    tmp.list.1[[i]] <- paste("Y", yearIndex[[i]], yearIndexEnd, sep = "_") # energy-year names
    tmp.list.2[[i]] <- data.frame(iteration_stamp = seq(as.POSIXct(x = paste(paste(yearIndex[[i]], monthStart, 
                                                                                   dayStart, sep = "-"), 
                                                                             paste(hourStart, minStart, 
                                                                                   secondStart, sep = ":"), 
                                                                             sep = " "), 
                                                                   tz = tz), # start of sequence
                                                        as.POSIXct(x = paste(paste(yearIndexEnd, monthEnd, 
                                                                                   dayEnd, sep = "-"), 
                                                                             paste(hourEnd, minEnd, 
                                                                                   secondEnd, sep = ":"), 
                                                                             sep = " "), 
                                                                   tz = tz), # end of sequence
                                                        by = by) %>%
                                    format.POSIXct(format = format, # this can be used to truncate times
                                                   tz = tz) %>% # time zone
                                    as.POSIXct(tz = tz)) # reformat to POSIXct standard date-time format
    setTxtProgressBar(pb, i) # set progress bar position
  }
  close(pb) # close progress bar
  names(tmp.list.2) <- tmp.list.1 # give names to list
  tmp.list.2 # output your created energy time sequence
} # end of function