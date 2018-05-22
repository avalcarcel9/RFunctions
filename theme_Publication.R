#######################
# Alessandra Valcarcel
# Plot to publication ready ggplot2 figures
# October 10, 2017
#######################

theme_Publication <- function(base_family="Arial", leg.position, leg.direction) {
  (theme_foundation(base_family=base_family)
   + theme(plot.title = element_text(face = "bold",
                                     size = 30, hjust = 0.5),
           text = element_text(),
           plot.caption=element_text(size=22),
           panel.background = element_rect(colour = NA),
           plot.background = element_rect(colour = NA),
           panel.border = element_rect(colour = NA),
           axis.title = element_text(),
           axis.title.y = element_text(angle=90,vjust =2, size = 24),
           axis.title.x = element_text(vjust = -0.2, size = 24),
           axis.text = element_text(),
           axis.text.x = element_text(size = 24),
           axis.text.y = element_text(size = 24),
           axis.line = element_line(colour="black"),
           axis.ticks = element_line(),
           panel.grid.major = element_line(colour="#f0f0f0"),
           panel.grid.minor = element_blank(),
           legend.key = element_rect(colour = NA),
           legend.position = leg.position,
           legend.direction = leg.direction,
           legend.key.size= unit(1, "cm"),
           legend.margin = unit(0, "cm"),
           legend.title = element_text(face="italic", size = 24),
           plot.margin=unit(c(10,5,5,5),"mm"),
           strip.background=element_rect(colour="#f0f0f0",fill="#f0f0f0"),
           strip.text = element_text(face="bold")
   ))
  
}


# #######################
# # Alessandra Valcarcel
# # Plot to publication ready ggplot2 figures
# # October 10, 2017
# #######################
# 
# theme_Publication <- function(base_family="Arial", leg.position, leg.direction) {
#   (theme_foundation(base_family=base_family)
#    + theme(plot.title = element_text(face = "bold",
#                                      size = 18, hjust = 0.5),
#            text = element_text(),
#            plot.caption=element_text(size=12),
#            panel.background = element_rect(colour = NA),
#            plot.background = element_rect(colour = NA),
#            panel.border = element_rect(colour = NA),
#            axis.title = element_text(),
#            axis.title.y = element_text(angle=90,vjust =2, size = 12),
#            axis.title.x = element_text(vjust = -0.2, size = 12),
#            axis.text = element_text(),
#            axis.text.x = element_text(size = 12),
#            axis.text.y = element_text(size = 12),
#            axis.line = element_line(colour="black"),
#            axis.ticks = element_line(),
#            panel.grid.major = element_line(colour="#f0f0f0"),
#            panel.grid.minor = element_blank(),
#            legend.key = element_rect(colour = NA),
#            legend.position = leg.position,
#            legend.direction = leg.direction,
#            legend.key.size= unit(1, "cm"),
#            legend.margin = unit(0, "cm"),
#            legend.title = element_text(face="italic", size = 12),
#            plot.margin=unit(c(10,5,5,5),"mm"),
#            strip.background=element_rect(colour="#f0f0f0",fill="#f0f0f0"),
#            strip.text = element_text(face="bold")
#    ))
#   
# }
