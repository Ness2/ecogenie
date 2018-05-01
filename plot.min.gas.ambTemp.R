#####################################################################################
#
# ecogenie: plot by minute, gas and ambient temperature versus time
#
#####################################################################################
# EcoGenie Plot
plot.min.gas.ambTemp <- function(yearStart = "2012", yearEnd = "2017") {
  yearIndex <- as.numeric(yearStart):as.numeric(yearEnd) # these are the energy-year starting years
  tmp.list.1 <- list(length = length(yearIndex)) # create temporary list for list names
  tmp.list.2 <- list(length = length(yearIndex)) # create a list of energy-years
  for (i in 1:length(yearIndex)) {
    yearIndexEnd <- yearIndex[[i]] + 1 # an energy-year ends in the year after the starting year
    tmp.list.1[[i]] <- paste("Y", yearIndex[[i]], yearIndexEnd, sep = "_") # energy-year names
    # NOTE: clean.data should have save years as this plot function
    tmp.list.2[[i]] <- ggplot(clean.data[[i]], aes(x = iteration_stamp)) + 
      geom_line(mapping = aes(y = gas_flow * 31.669 / 3.6), # use caloric value and convert kWh to MJ
                colour = darkblue,
                size = 0.1,
                group = 1,
                alpha = 0.9
      ) +
      geom_line(mapping = aes(y = ambient_temperature/97), # search for a representative scaling factor
                # use this same scaling factor at scale_y_continious, but divide instead of multiply or;
                # multiply instead of divide. This will create a trustworthy scaled ambient temperature.
                colour = darkred,
                group = 1,
                alpha = 0.2
      ) +
      # NOTE: missing.data should have save years as this plot function
      geom_rect(data = missing.data[[i]], # make rectangular "lines" at missing data spots
                xmin = missing.data[[i]]$iteration_stamp, # this is where the rectangle starts
                xmax = missing.data[[i]]$end, # this gives the rectangles an area
                ymin = -Inf,
                ymax = +Inf,
                fill = "yellow",
                alpha = 0.8,
                inherit.aes = FALSE
      ) +
      scale_y_continuous(sec.axis = sec_axis(~.*97, name = "Ambient Temperature (deg Celsius)")
      ) +
      labs(title = "Correlation between ambient temperature and gas flow",
           x = "Time (min)",
           y = "Gas Flow (kWh)",
           caption = "EcoGenie"
      ) + 
      EcoGenieTheme # call the EcoGenie Plot Theme
  }
  names(tmp.list.2) <- tmp.list.1 # give names to list
  tmp.list.2 # output your created energy time sequence
} # end of function