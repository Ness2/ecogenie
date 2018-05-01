#####################################################################################
#
# call create.time.sequence
#
######################################################################################
# timeFrameSequence <- create.time.sequence(yearStart = "2012", yearEnd = "2017")
# 
# # re-bind the seperate lists within lists
# # WARNING! SHOULD NOT BE USED WHEN (by == "sec"), vector my become out of bounds
# for (i in 1:length(timeFrameSequence)) { # bind years
#   for (j in 1:length(timeFrameSequence[[i]])) { # bind months
#     for (k in 1:length(timeFrameSequence[[i]][[j]])) { # bind days
#       timeFrameSequence[[i]][[j]][[k]] <- bind_rows(timeFrameSequence[[i]][[j]][[k]])
#     } # days bound
#     timeFrameSequence[[i]][[j]] <- bind_rows(timeFrameSequence[[i]][[j]])
#   } # months bound
#   timeFrameSequence[[i]] <- bind_rows(timeFrameSequence[[i]])
# } # years bound
# 
# # # FULL YEAR LIST
# # timeFrameSequence <- bind_rows(timeFrameSequence)

energyTimeFrameSequence <- create.energy.time.sequence()