#######################################################################################################################
#
# import data complete (version)
#
#######################################################################################################################
import.data.complete <- function(mypath = "~/R/ecogenie/EcoGenie_Data_FTP", header = TRUE, sep = ",", quote = "\"",
                                 stringsAsFactors = FALSE, skipNul = TRUE,
                                 version = 2, year = "2013",
                                 yearStart = "2012", yearEnd = "2018") {
  import.version <- NULL
  if (version == 1) { # for all .csv
    import.version <- import_multiple_data_tables(mypath = mypath, mypattern = ".csv", 
                                                  header = header, sep = sep,
                                                  quote = quote, stringsAsFactors = stringsAsFactors, 
                                                  skipNul = skipNul)
    import.version
  } else if (version == 2) { # for selection per year
    import.version <- import_multiple_data_tables(mypath = mypath, mypattern = year, 
                                                  header = header, sep = sep,
                                                  quote = quote, stringsAsFactors = stringsAsFactors, 
                                                  skipNul = skipNul)
    import.version
  }
  else if (version == 3) { # for all EcoGenie years
    yearIndex <- as.numeric(yearStart):as.numeric(yearEnd) # these are the energy-year starting years
    yearIndex.mypattern <- as.character(yearIndex) # convert to characters for mypattern in import_multiple_data_tables
    version.2 <- version.2.names <- list(length = length(yearIndex)) # create a list for each energy-year
    pbv2 <- txtProgressBar(min = 0, max = length(yearIndex), style = 3) # this is the progress bar for version 2
    for (i in 1:length(yearIndex)) {
      version.2.names[[i]] <- paste("Y", yearIndex[[i]], sep = "_") # year names
      version.2[[i]] <- import_multiple_data_tables(mypath = mypath, mypattern = yearIndex.mypattern[[i]], 
                                                    header = header, sep = sep,
                                                    quote = quote, stringsAsFactors = stringsAsFactors, 
                                                    skipNul = skipNul)
      setTxtProgressBar(pbv2, i) # set progress bar position of version 2
    }
    close(pbv2) # close progress bar of version 2
    names(version.2) <- version.2.names # give names to list
    version.2 # output your created energy time sequence
  }
} # end of function