#####################################################################################
#
# ecogenie replace NA with new values
#
#####################################################################################
clean.data$Y_2012_2013$gas_flow[is.na(clean.data$Y_2012_2013$gas_flow)] <- 0.007 # kWh
clean.data$Y_2013_2014$gas_flow[is.na(clean.data$Y_2013_2014$gas_flow)] <- 0.007 # kWh
clean.data$Y_2014_2015$gas_flow[is.na(clean.data$Y_2014_2015$gas_flow)] <- 0.007 # kWh
clean.data$Y_2015_2016$gas_flow[is.na(clean.data$Y_2015_2016$gas_flow)] <- 0.007 # kWh
clean.data$Y_2016_2017$gas_flow[is.na(clean.data$Y_2016_2017$gas_flow)] <- 0.007 # kWh
clean.data$Y_2017_2018$gas_flow[is.na(clean.data$Y_2017_2018$gas_flow)] <- 0.007 # kWh

clean.data$Y_2012_2013$ambient_temperature[is.na(clean.data$Y_2012_2013$ambient_temperature)] <- 12 # deg Celcius
clean.data$Y_2013_2014$ambient_temperature[is.na(clean.data$Y_2013_2014$ambient_temperature)] <- 12 # deg Celcius
clean.data$Y_2014_2015$ambient_temperature[is.na(clean.data$Y_2014_2015$ambient_temperature)] <- 12 # deg Celcius
clean.data$Y_2015_2016$ambient_temperature[is.na(clean.data$Y_2015_2016$ambient_temperature)] <- 12 # deg Celcius
clean.data$Y_2016_2017$ambient_temperature[is.na(clean.data$Y_2016_2017$ambient_temperature)] <- 12 # deg Celcius
clean.data$Y_2017_2018$ambient_temperature[is.na(clean.data$Y_2017_2018$ambient_temperature)] <- 12 # deg Celcius

clean.data$Y_2012_2013$house_temperature[is.na(clean.data$Y_2012_2013$house_temperature)] <- 15 # deg Celcius
clean.data$Y_2013_2014$house_temperature[is.na(clean.data$Y_2013_2014$house_temperature)] <- 15 # deg Celcius
clean.data$Y_2014_2015$house_temperature[is.na(clean.data$Y_2014_2015$house_temperature)] <- 15 # deg Celcius
clean.data$Y_2015_2016$house_temperature[is.na(clean.data$Y_2015_2016$house_temperature)] <- 15 # deg Celcius
clean.data$Y_2016_2017$house_temperature[is.na(clean.data$Y_2016_2017$house_temperature)] <- 15 # deg Celcius
clean.data$Y_2017_2018$house_temperature[is.na(clean.data$Y_2017_2018$house_temperature)] <- 15 # deg Celcius

clean.data$Y_2012_2013$electricity[is.na(clean.data$Y_2012_2013$electricity)] <- 0.06 # kWh
clean.data$Y_2013_2014$electricity[is.na(clean.data$Y_2013_2014$electricity)] <- 0.06 # kWh
clean.data$Y_2014_2015$electricity[is.na(clean.data$Y_2014_2015$electricity)] <- 0.06 # kWh
clean.data$Y_2015_2016$electricity[is.na(clean.data$Y_2015_2016$electricity)] <- 0.06 # kWh
clean.data$Y_2016_2017$electricity[is.na(clean.data$Y_2016_2017$electricity)] <- 0.06 # kWh
clean.data$Y_2017_2018$electricity[is.na(clean.data$Y_2017_2018$electricity)] <- 0.06 # kWh

clean.data$Y_2012_2013$heat_to_radiator[is.na(clean.data$Y_2012_2013$heat_to_radiator)] <- 0.00 # CHECK
clean.data$Y_2012_2013$heat_to_radiator[is.na(clean.data$Y_2012_2013$heat_to_radiator)] <- 0.00 # CHECK
clean.data$Y_2012_2013$heat_to_radiator[is.na(clean.data$Y_2012_2013$heat_to_radiator)] <- 0.00 # CHECK
clean.data$Y_2012_2013$heat_to_radiator[is.na(clean.data$Y_2012_2013$heat_to_radiator)] <- 0.00 # CHECK
clean.data$Y_2012_2013$heat_to_radiator[is.na(clean.data$Y_2012_2013$heat_to_radiator)] <- 0.00 # CHECK
clean.data$Y_2012_2013$heat_to_radiator[is.na(clean.data$Y_2012_2013$heat_to_radiator)] <- 0.00 # CHECK