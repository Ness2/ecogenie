#####################################################################################
#
# ecogenie empty year date frame list
#
#####################################################################################
empty_year_dfList <- list()
empty_year <- list()

# FULL EMPTY LIST WITH MINUTES PER YEAR
empty_year_dfList$year2012 <- data.frame(iteration_stamp = seq(as.POSIXct("2012-01-01 00:00:00", tz = "UTC"), 
                                                               as.POSIXct("2012-12-31 23:59:59", tz = "UTC"), 
                                                               by = "1 min") %>%
                                           format.POSIXct(format = "%Y-%m-%d %H:%M",
                                                          tz = "UTC") %>%
                                           as.POSIXct(tz = "UTC"))

empty_year_dfList$year2013 <- data.frame(iteration_stamp = seq(as.POSIXct("2013-01-01 00:00:00", tz = "UTC"), 
                                                               as.POSIXct("2013-12-31 23:59:59", tz = "UTC"), 
                                                               by = "1 min") %>%
                                           format.POSIXct(format = "%Y-%m-%d %H:%M",
                                                          tz = "UTC") %>%
                                           as.POSIXct(tz = "UTC"))
  
empty_year_dfList$year2014 <- data.frame(iteration_stamp = seq(as.POSIXct("2014-01-01 00:00:00", tz = "UTC"), 
                                                               as.POSIXct("2014-12-31 23:59:59", tz = "UTC"), 
                                                               by = "1 min") %>%
                                           format.POSIXct(format = "%Y-%m-%d %H:%M",
                                                          tz = "UTC") %>%
                                           as.POSIXct(tz = "UTC"))
  
empty_year_dfList$year2015 <- data.frame(iteration_stamp = seq(as.POSIXct("2015-01-01 00:00:00", tz = "UTC"), 
                                                               as.POSIXct("2015-12-31 23:59:59", tz = "UTC"), 
                                                               by = "1 min") %>%
                                           format.POSIXct(format = "%Y-%m-%d %H:%M",
                                                          tz = "UTC") %>%
                                           as.POSIXct(tz = "UTC"))
  
empty_year_dfList$year2016 <- data.frame(iteration_stamp = seq(as.POSIXct("2016-01-01 00:00:00", tz = "UTC"), 
                                                               as.POSIXct("2016-12-31 23:59:59", tz = "UTC"), 
                                                               by = "1 min") %>%
                                           format.POSIXct(format = "%Y-%m-%d %H:%M",
                                                          tz = "UTC") %>%
                                           as.POSIXct(tz = "UTC"))

empty_year_dfList$year2017 <- data.frame(iteration_stamp = seq(as.POSIXct("2017-01-01 00:00:00", tz = "UTC"), 
                                                               as.POSIXct("2017-12-31 23:59:59", tz = "UTC"), 
                                                               by = "1 min") %>%
                                           format.POSIXct(format = "%Y-%m-%d %H:%M",
                                                          tz = "UTC") %>%
                                           as.POSIXct(tz = "UTC"))

# FULL EMPTY LIST WITH SECONDS PER MONTH
empty_year$year2012 <- data.frame(iteration_stamp = seq(as.POSIXct("2012-01-01 00:00:00", tz = "UTC"), 
                                                               as.POSIXct("2012-01-31 23:59:59", tz = "UTC"), 
                                                               by = "1 sec"))
empty_year$year2013 <- data.frame(iteration_stamp = seq(as.POSIXct("2013-01-01 00:00:00", tz = "UTC"), 
                                                               as.POSIXct("2013-12-31 23:59:59", tz = "UTC"), 
                                                               by = "1 sec"))
empty_year$year2014 <- data.frame(iteration_stamp = seq(as.POSIXct("2014-01-01 00:00:00", tz = "UTC"), 
                                                               as.POSIXct("2014-12-31 23:59:59", tz = "UTC"), 
                                                               by = "1 sec"))
empty_year$year2015 <- data.frame(iteration_stamp = seq(as.POSIXct("2015-01-01 00:00:00", tz = "UTC"), 
                                                               as.POSIXct("2015-12-31 23:59:59", tz = "UTC"), 
                                                               by = "1 sec"))
empty_year$year2016 <- data.frame(iteration_stamp = seq(as.POSIXct("2016-01-01 00:00:00", tz = "UTC"), 
                                                               as.POSIXct("2016-12-31 23:59:59", tz = "UTC"), 
                                                               by = "1 sec"))
empty_year$year2017 <- data.frame(iteration_stamp = seq(as.POSIXct("2017-01-01 00:00:00", tz = "UTC"), 
                                                               as.POSIXct("2017-12-31 23:59:59", tz = "UTC"), 
                                                               by = "1 sec"))