#######################################################################################################################
#
# ecogenie call import data
#
#######################################################################################################################
start.call.import <- Sys.time()
# call data import - version 1 is for 16gb RAM, version 2 for 8gb RAM, version 3 is special case for 2012 to 2018
data.import <- import.data.complete()

# data.import1 <- import.data.complete(version = 2, year = "2012")
# data.import2 <- import.data.complete(version = 2, year = "2013")
# data.import3 <- import.data.complete(version = 2, year = "2014")
# data.import4 <- import.data.complete(version = 2, year = "2015")
# data.import5 <- import.data.complete(version = 2, year = "2016")
# data.import6 <- import.data.complete(version = 2, year = "2017")
# data.import7 <- import.data.complete(version = 2, year = "2018")

setwd("~/R/ecogenie")
# End import call timer
end.call.import <- Sys.time()
start.call.import.clean <- Sys.time()

# # Remove NULL lists
data.import.clean <- data.import %>% rmNullObs.BIG()

# End import clean call timer
end.call.import.clean <- Sys.time()