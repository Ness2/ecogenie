#####################################################################################
#
# ecogenie
#
# - calls scripts
#   - ecogenie_libraries
#   - ecogenie_read_files
#   - ecogenie_time_stamp_correction
#   - ecogenie_data_cleaning
#
#####################################################################################


############ call scripts
# ecogenie_libraries
if(!exists("foo", mode="function")) source("ecogenie_libraries.R")
# ecogenie_read_files
if(!exists("foo", mode="function")) source("ecogenie_read_files.R")
# ecogenie_time_stamp_correction
if(!exists("foo", mode="function")) source("ecogenie_time_stamp_correction.R")
# ecogenie_data_cleaning
if(!exists("foo", mode="function")) source("ecogenie_data_cleaning.R")
