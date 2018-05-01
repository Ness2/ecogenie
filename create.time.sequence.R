######################################################################################################################
#
# create time sequence
#
######################################################################################################################
create.time.sequence <- function(yearStart = "2013", monthStart = "01", dayStart = "01",
                                 hourStart = "00", minStart = "00", secondStart = "00", 
                                 yearEnd = "2013", monthEnd = "12", dayEnd = "31",
                                 hourEnd = "23", minEnd = "59", secondEnd = "59",
                                 by = "min", tz = "UTC", ...) {
  yearIndex <- as.numeric(yearStart):as.numeric(yearEnd)
  monthIndex <- as.numeric(monthStart):as.numeric(monthEnd)
  dayIndex <- as.numeric(dayStart):as.numeric(dayEnd)
  tmp.list.1 <- tmp.list.2 <- list(yearIndex)
  tmp.list.3 <- tmp.list.4 <- list(monthIndex)
  pbi <- txtProgressBar(min = 0, max = length(yearIndex), style = 3)
  pbj <- txtProgressBar(min = 0, max = length(monthIndex), style = 3)
  pbk <- txtProgressBar(min = 0, max = length(dayIndex), style = 3)
#____________________________________________________________________________________________________________________#
  for (i in 1:length(yearIndex)) { # list of years
    tmp.list.1[[i]] <- paste("Y", yearIndex[[i]], sep = "_")
    for (j in 1:length(monthIndex)) { # 1 to 12 months
      tmp.list.3[[j]] <- paste("M", monthIndex[[j]], sep = "_")
      # different conditions for different months
#____________________________________________________________________________________________________________________#
        if (((monthIndex[[j]] == 1) || (monthIndex[[j]] == 3) || (monthIndex[[j]] == 5) ||
             (monthIndex[[j]] == 7) || (monthIndex[[j]] == 8) || (monthIndex[[j]] == 10) ||
             (monthIndex[[j]] == 12))) { # MONTHS WITH 31 DAYS
          tmp.list.5 <- tmp.list.6 <- list(1:31) # day lists generation
          for (k in 1:length(dayIndex)) {
            if (k <= 31) {
              tmp.list.5[[k]] <- paste("D", dayIndex[[k]], sep = "_")
              tmp.list.6[[k]] <- data.frame(iteration_stamp = seq(as.POSIXct(x = paste(paste(
                yearIndex[[i]], monthIndex[[j]], dayIndex[[k]], sep = "-"), paste(
                  hourStart, minStart, secondStart, sep = ":"), sep = " "), tz = tz), as.POSIXct(
                    x = paste(paste(yearIndex[[i]], monthIndex[[j]], dayIndex[[k]], sep = "-"), paste(
                      hourEnd, minEnd, secondEnd, sep = ":"), sep = " "), tz = tz), by = by), ...)
            }
            setTxtProgressBar(pbk, k)
          } # end MONTHS WITH 31 DAYS
          close(pbk)
          names(tmp.list.6) <- tmp.list.5 # name day lists
          tmp.list.4[[j]] <- tmp.list.6 # list of days per month per year
#____________________________________________________________________________________________________________________#
        } else if (((monthIndex[[j]] == 4) || (monthIndex[[j]] == 6) || (monthIndex[[j]] == 9) ||
                    (monthIndex[[j]] == 11))) { # MONTHS WITH 30 DAYS
          tmp.list.5 <- tmp.list.6 <- list(1:30) # day lists generation
          for (k in 1:length(dayIndex)) {
            if (k <= 30) {
              tmp.list.5[[k]] <- paste("D", dayIndex[[k]], sep = "_")
              tmp.list.6[[k]] <- data.frame(iteration_stamp = seq(as.POSIXct(x = paste(paste(
                yearIndex[[i]], monthIndex[[j]], dayIndex[[k]], sep = "-"), paste(
                  hourStart, minStart, secondStart, sep = ":"), sep = " "), tz = tz), as.POSIXct(
                    x = paste(paste(yearIndex[[i]], monthIndex[[j]], dayIndex[[k]], sep = "-"), paste(
                      hourEnd, minEnd, secondEnd, sep = ":"), sep = " "), tz = tz), by = by), ...)
            }
            setTxtProgressBar(pbk, k)
          } # end MONTHS WITH 30 DAYS
          close(pbk)
          names(tmp.list.6) <- tmp.list.5 # name day lists
          tmp.list.4[[j]] <- tmp.list.6 # list of days per month per year
#____________________________________________________________________________________________________________________#
        } else if ((leap_year(yearIndex[[i]])) && (monthIndex[[j]] == 2)) { # FEBRUARY LEAP YEAR
          tmp.list.5 <- tmp.list.6 <- list(1:29) # day lists generation
          for (k in 1:length(dayIndex)) {
            if (k <= 29) {
              tmp.list.5[[k]] <- paste("D", dayIndex[[k]], sep = "_")
              tmp.list.6[[k]] <- data.frame(iteration_stamp = seq(as.POSIXct(x = paste(paste(
                yearIndex[[i]], monthIndex[[j]], dayIndex[[k]], sep = "-"), paste(
                  hourStart, minStart, secondStart, sep = ":"), sep = " "), tz = tz), as.POSIXct(
                    x = paste(paste(yearIndex[[i]], monthIndex[[j]], dayIndex[[k]], sep = "-"), paste(
                      hourEnd, minEnd, secondEnd, sep = ":"), sep = " "), tz = tz), by = by), ...)
            }
            setTxtProgressBar(pbk, k)
          } # end FEBRUARY LEAP YEAR
          close(pbk)
          names(tmp.list.6) <- tmp.list.5 # name day lists
          tmp.list.4[[j]] <- tmp.list.6 # list of days per month per year
#____________________________________________________________________________________________________________________#
        } else if (!(leap_year(yearIndex[[i]])) && (monthIndex[[j]] == 2)) { # FEBRUARY NON-LEAP YEAR
          tmp.list.5 <- tmp.list.6 <- list(1:28) # day lists generation
          for (k in 1:length(dayIndex)) {
            if (k <= 28) {
              tmp.list.5[[k]] <- paste("D", dayIndex[[k]], sep = "_")
              tmp.list.6[[k]] <- data.frame(iteration_stamp = seq(as.POSIXct(x = paste(paste(
                yearIndex[[i]], monthIndex[[j]], dayIndex[[k]], sep = "-"), paste(
                  hourStart, minStart, secondStart, sep = ":"), sep = " "), tz = tz), as.POSIXct(
                    x = paste(paste(yearIndex[[i]], monthIndex[[j]], dayIndex[[k]], sep = "-"), paste(
                      hourEnd, minEnd, secondEnd, sep = ":"), sep = " "), tz = tz), by = by), ...)
            }
            setTxtProgressBar(pbk, k)
          } # end FEBRUARY NON-LEAP YEAR
          close(pbk)
          names(tmp.list.6) <- tmp.list.5 # name day lists
          tmp.list.4[[j]] <- tmp.list.6 # list of days per month per year
#____________________________________________________________________________________________________________________#
        } else { # last month condition for day list structure
          print("Incorrect number of months.")
        } # end of day based conditions
#____________________________________________________________________________________________________________________#
      setTxtProgressBar(pbj, j)
    } # end of month list structure
    close(pbj)
    names(tmp.list.4) <- tmp.list.3 # name month lists
    tmp.list.2[[i]] <- tmp.list.4 # list of months per year
    setTxtProgressBar(pbi, i)
  } # end of year list structure
  close(pbi)
  names(tmp.list.2) <- tmp.list.1 # name year lists
  tmp.list.2 # this will provide the final list of lists of lists
} # end of function create.time.sequence.R