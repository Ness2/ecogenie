#####################################################################################
#
# ecogenie data selection
#
#####################################################################################
data.selection <- data.import.clean
for (i in 1:length(data.selection)) {
  data.selection[[i]][,1] <- as.POSIXct(data.selection[[i]][,1], format = "%d.%m.%Y:%T", tz = "UTC")
  names(data.selection[[i]]) <- data.selection[[i]] %>%
    names() %>% 
    gsub(pattern = "Datensatz", replacement = "iteration_stamp") %>%    
    gsub(pattern = "Export.Dayley", replacement = "iteration_stamp") %>%
    gsub(pattern = "FI\\.", replacement = "FI_") %>% 
    gsub(pattern = "TI\\.", replacement = "TI_") %>% 
    gsub(pattern = "XI\\.", replacement = "XI_") %>% 
    gsub(pattern = "XY\\.", replacement = "XY_") %>% 
    gsub(pattern = "\\.\\.m3\\.$", replacement =  "") %>%
    gsub(pattern = "\\.\\.degC\\.$", replacement =  "") %>%
    gsub(pattern = "\\.\\.kWh\\.$", replacement =  "") %>%
    gsub(pattern = "\\.\\.kW\\.$", replacement =  "") %>%
    gsub(pattern = "Export.Daily", replacement = "iteration_stamp") %>%
    gsub(pattern = "XI_004", replacement = "electricity") %>% 
    gsub(pattern = "FI_001", replacement = "gas_flow") %>% 
    gsub(pattern = "TI_031", replacement = "house_temperature") %>% 
    gsub(pattern = "TI_032", replacement = "ambient_temperature") %>%
    gsub(pattern = "XY_012", replacement = "heat_to_radiator")
  data.selection[[i]] <- data.selection[[i]] %>%
    select(c(iteration_stamp,
             electricity,
             gas_flow, 
             house_temperature, 
             ambient_temperature,
             heat_to_radiator)) %>%
    filter(!is.na(iteration_stamp),
           !is.na(electricity),
           !is.na(gas_flow),
           !is.na(house_temperature),
           !is.na(ambient_temperature),
           !is.na(heat_to_radiator))
}
data.selection <- bind_rows(data.selection)
raw.data <- data.selection

data.selection$electricity <- rate_of_change(data.selection$electricity)
data.selection$gas_flow <- rate_of_change(data.selection$gas_flow)