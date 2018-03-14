#####################################################################################
#
# ecogenie Time Stamp Correction
#
#####################################################################################

# Time Stamp Correction
ecogenie_datafile[,1] <- ecogenie_datafile[,1] %>% as.POSIXct(format = "%d.%m.%Y:%T", tz = "GMT")
