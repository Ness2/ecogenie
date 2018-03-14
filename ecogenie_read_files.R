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

#____________________________________________________________________________________
# Sensorlist Data:

# Read Thermocouples
Thermocouples <- read_excel("Sensorlist.xlsx",
                         sheet = 1)

# Read Flow Meter
#Flowmeter <- read_excel("Sensorlist.xlsx",
#                         sheet = 2)

# Read Pumps
Pumps <- read_excel("Sensorlist.xlsx",
                         sheet = 3)

# Read Valves
Valves <- read_excel("Sensorlist.xlsx",
                         sheet = 4)

# Read Move Sensor
#MoveSensor <- read_excel("Sensorlist.xlsx",
#                         sheet = 5)

# Read Energy EMPTY SHEET
#Energy <- read_excel("Sensorlist.xlsx",
#                         sheet = 6)

# Read Diverses
Diverses <- read_excel("Sensorlist.xlsx",
                         sheet = 7)

#____________________________________________________________________________________
# Sensor and Calculation list2 Data:

# Read Final List
FinalList <- read_excel("Sensor and Calculation list2.xlsx",
                             sheet = 1)

# Read Support Data
SupportData <- read_excel("Sensor and Calculation list2.xlsx",
                             sheet = 2)

# Read Support Data NL
SupportDataNL <- read_excel("Sensor and Calculation list2.xlsx",
                             sheet = 3)

# Read Sheet 1
Sheet1 <- read_excel("Sensor and Calculation list2.xlsx",
                             sheet = 4)