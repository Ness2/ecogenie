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

# Sensorlist Data:
# Read Thermocouples
sl_s1_Thermocouples <- read_excel("Sensorlist.xlsx",
                                  sheet = 1)

# Read Pumps
sl_s3_Pumps <- read_excel("Sensorlist.xlsx",
                          sheet = 3)

# Read Valves
sl_s4_Valves <- read_excel("Sensorlist.xlsx",
                           sheet = 4)

# Read Diverses
sl_s7_Diverses <- read_excel("Sensorlist.xlsx",
                             sheet = 7)

# Sensor and Calculation list2 Data:
# Read Final List
slcl2_s1_FinalList <- read_excel("Sensor and Calculation list2.xlsx",
                                 sheet = 1)

# Read Support Data
slcl2_s2_SupportData <- read_excel("Sensor and Calculation list2.xlsx",
                                   sheet = 2)

# Read Support Data NL
slcl2_s3_SupportDataNL <- read_excel("Sensor and Calculation list2.xlsx",
                                     sheet = 3)

# Read Sheet 1
slcl2_s4_Sheet1 <- read_excel("Sensor and Calculation list2.xlsx",
                              sheet = 4)