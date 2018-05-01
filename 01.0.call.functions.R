#####################################################################################
#
# ecogenie call functions
#
#####################################################################################
setwd("~/R/ecogenie/functions")

# import multiple data tables (or .csv files) into a list of data frames for each one
if(!exists("foo", mode="function")) source("import_multiple_data_tables.R")
if(!exists("foo", mode="function")) source("import.data.complete.R")

# data analysis
if(!exists("foo", mode="function")) source("create.data.clean.R")
if(!exists("foo", mode="function")) source("create.data.missing.R")
if(!exists("foo", mode="function")) source("create.data.summary.R")

# calculate derivatives
if(!exists("foo", mode="function")) source("rate_of_change.R")
if(!exists("foo", mode="function")) source("derivative.R")

# function(s) for plotting graphs
if(!exists("foo", mode="function")) source("plot.min.gas.ambTemp.R")
if(!exists("foo", mode="function")) source("plot.min.elec.ambTemp.R")

# function(s) for creating time sequences
if(!exists("foo", mode="function")) source("create.time.sequence.R")
if(!exists("foo", mode="function")) source("create.energy.time.sequence.R")

# function(s) to check for NA values
if(!exists("foo", mode="function")) source("is.NullOb.R")
if(!exists("foo", mode="function")) source("rmNullObs.R")
if(!exists("foo", mode="function")) source("rmNullObs.BIG.R")

setwd("~/R/ecogenie")