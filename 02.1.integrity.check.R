#####################################################################################
#
# ecogenie integrity check
#
#####################################################################################
# Clean Data Selection
clean.data.selection <- data.selection %>%
  filter(!duplicated(iteration_stamp))

# Truncate seconds from time.data / timestamp / iteration_stamp:
clean.data.selection$iteration_stamp <- format.POSIXct(clean.data.selection$iteration_stamp,
                                                       format = "%Y-%m-%d %H:%M",
                                                       tz = "UTC")
clean.data.selection$iteration_stamp <- as.POSIXct(clean.data.selection$iteration_stamp, tz = "UTC")