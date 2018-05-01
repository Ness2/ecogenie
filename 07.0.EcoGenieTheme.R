#####################################################################################
#
# ecogenie ecogenie theme
#
#####################################################################################
backgroundmarble <- "#f0f0f0"
aquamarine <- "#7fffd4"
darkblue <- "#003366"
darkred <- "#8B0000"

# EcoGenie Theme
EcoGenieTheme <- theme(plot.background = element_rect(fill = backgroundmarble, color = "black", size = 1),
                       axis.line = element_line(color = "black"),
                       strip.text = element_text(size = 16, color = darkred),
                       axis.title.y = element_text(color = "black", face = "italic"),
                       axis.title.x = element_text(color = "black", face = "italic"),
                       axis.text = element_text(color = "black"),
                       legend.position = "Bottom")