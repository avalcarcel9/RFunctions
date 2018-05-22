##################################
# Alessandra Valcarcel
# Code to beautify plots for publication
# October 10, 2017
#################################

scale_colour_Publication <- function(...){
  discrete_scale("colour",
                 "Publication",
                 manual_pal(values = brewer.pal(n = 8, name = "Set1")), ...)
}