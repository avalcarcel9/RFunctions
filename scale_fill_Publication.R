##################################
# Alessandra Valcarcel
# Code to beautify plots for publication
# October 10, 2017
#################################


scale_fill_Publication <- function(...){
  discrete_scale("fill",
                 "Publication",
                 manual_pal(values = c("#386cb0","#fdb462","#7fc97f","#ef3b2c","#662506","#a6cee3","#fb9a99","#984ea3","#ffff33")), ...)
}
