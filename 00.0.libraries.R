#####################################################################################
#
#  Ecogenie Libraries 
#   - list of libraries
#     - adds libraries when needed
# 
#####################################################################################

# set the working directory
# for Windows 10
setwd("~/R/ecogenie")

libraries <- list("shiny", 
                  "shinythemes", 
                  "shinydashboard", 
                  "DT", 
                  "tidyverse",
                  "tidyr",
                  "dplyr", 
                  "ggplot2", 
                  "readxl", 
                  "readr",
                  "XLConnect", 
                  "stringr", 
                  "lubridate",
                  "purrr",
                  "tools",
                  "tibble",
                  "RColorBrewer",
                  "reshape2")

lapply(libraries, FUN=function(y){do.call("require", list(y))})
