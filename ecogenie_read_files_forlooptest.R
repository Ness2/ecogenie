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

# Print out the names of the 7 sheets of Sensorlist.xlsx
for(i in excel_sheets("Sensorlist.xlsx")) {
  print(paste("Sensorlist", i, sep = ": "))
}

# Print out the names of the 4 sheets of Sensor and Calculation list2.xlsx
for(i in excel_sheets("Sensor and Calculation list2.xlsx")) {
  print(paste("Sensor and Calculation List 2", i, sep = ": "))
}

# Define file name in order to obtain sheet length
fileName <- "Sensorlist.xlsx"
sheetLength <- length(excel_sheets(fileName))

# Read the 7 sheets of Sensorlist.xlsx
for(i in 1:sheetLength) {
  SensorlistSheet1 <- read_excel("Sensorlist.xlsx", sheet = i)
  SensorlistSheet3 <- read_excel("Sensorlist.xlsx", sheet = i)
}

# Sensor and Calculation list2 has 4 sheets
sen_ca_list2_1 <- read_excel("Sensor and Calculation list2.xlsx",
                             sheet = 1)