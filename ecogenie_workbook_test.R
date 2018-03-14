#####################################################################################
#
# read.csv and read_excel
#
#####################################################################################

# set the working directory
# for Windows 10
setwd("~/R/ecogenie")

# Read comma-delimited file
ecogenie_datafile <- read.csv(file = "Export_all_1min_02_28_2016_00_01_01.csv",
                              header = TRUE, stringsAsFactors = FALSE)

# Connect to workbook
ecogenie_sensorlist <- loadWorkbook("Sensorlist.xlsx")

# Create data frame: sensorlist_df
sheets <- getSheets(ecogenie_sensorlist)
#dims <- sapply(sheets, function(x) dim(readWorksheet(ecogenie_sensorlist, sheet = x)), USE.NAMES = FALSE)
#sensorlist_df <- data.frame(sheets = sheets,
#                   nrows = dims[ , ],
#                   ncols = dims[ , ])




# readWorksheet

# writeWorksheet(ecogenie_sensorlist, sensorlist_df, "data_summary")

# saveWorkbook(ecogenie_sensorlist, "summary.xlsx")