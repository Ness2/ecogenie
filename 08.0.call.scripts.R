#####################################################################################
#
# ecogenie call scripts
#  - 00 -> Raw
#  - 01 -> ?
#  - 02 -> Integrity
#  - 03 -> Physics
#  - 04 -> Forecast
#  - 05 -> Calculate Missing
#  - 06 -> DF: 365|366 *24 *60
#  - 07 -> Visualisation
#
#####################################################################################
# Start Timer and set working directory
setwd("~/R/ecogenie")
start.call.scripts <- Sys.time()

# 00 -> Raw
# - Load libraries, final_list
# - Create POSIXct 1-min lists per year
if(!exists("foo", mode="function")) source("00.0.libraries.R")
if(!exists("foo", mode="function")) source("00.1.final.list.R")

# 01 -> ?
# - Call functions, import.data and import.data.clean function
#    (may take a while to compute)
if(!exists("foo", mode="function")) source("01.0.call.functions.R")
if(!exists("foo", mode="function")) source("01.1.call.import.data.R")
if(!exists("foo", mode="function")) source("01.2.call.time.sequence.R")

# 02 -> Integrity
if(!exists("foo", mode="function")) source("02.0.data.selection.R")
if(!exists("foo", mode="function")) source("02.1.integrity.check.R")

# 03 -> Physics
if(!exists("foo", mode="function")) source("03.0.apply.physics.R")

# 04 -> Forecast
if(!exists("foo", mode="function")) source("04.0.forecast.calculations.R")

# 05 -> Calculate missing data
if(!exists("foo", mode="function")) source("05.0.calculate.missing.data.R")
if(!exists("foo", mode="function")) source("05.1.replace.new.values.R")
if(!exists("foo", mode="function")) source("05.2.neural.network.R")

# 06 -> Full Data Frame
if(!exists("foo", mode="function")) source("06.0.summary.clean.data.R")

# 07 - Data Visualisation
if(!exists("foo", mode="function")) source("07.0.EcoGenieTheme.R")
if(!exists("foo", mode="function")) source("07.1.call.plots.R")

# End Timer
end.call.scripts <- Sys.time()
time.taken.call.import <- end.call.import - start.call.import
time.taken.call.import.clean <- end.call.import.clean - start.call.import.clean
time.taken.call.scripts <- end.call.scripts - start.call.scripts
time.taken.call.import
time.taken.call.import.clean
time.taken.call.scripts