###############################################################################################################
#                                                                                                             #
# ecogenie info                                                                                               #
#  - LCV natural gas is 31.669 MJ/Nm3 for G-gas                                                               #
#       - (W) = (J/s)                                                                                         #
#       - 1kWh = 3.6MWs = 3.6MJ                                                                               #
#       - 1 year      = 365 day | 366 day = 8760 hour | 8784 hour =  525600 minute | 527040 minute            #
#       - 1 day       = 24 hour           = 1440 minute  = 86400 second                                       #
#       - 1 hour      = 60 minute         =   60 minute  =  3600 second                                       #
#       - 1 minute    = 60 second         =    1 minute  =    60 second                                       #
#                                                                                                             #
###############################################################################################################
clean.data.selection <- clean.data.selection %>%
  filter(electricity > 0 & electricity < 0.13) %>%
  filter(ambient_temperature < 40) %>%
  filter(gas_flow < 0.06)