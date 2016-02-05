# Global Active Power Plot (plot 2) 

source("./src/initialise.R")
library(ggplot2)

# Calculate limits for the plot
min_gap = min(data2$Global_active_power)
max_gap = max(data2$Global_active_power)

# Day of the week scaling
library(scales)
doW <- function(x) { weekdays(x, abbreviate = T)}

# Generate the plot
g <- ggplot(data2, aes(y = Global_active_power, x = Standard_Time)) + 
  ylab("Global Active Power (kilowatts)") +
  theme(axis.title.x = element_blank())
g + geom_line() + 
  scale_x_datetime(breaks = date_breaks("1 day"), labels = doW) +
  coord_cartesian(ylim=c(min_gap,max_gap)) 

dev.copy(png, file = "./figure/plot2.png", width=480, height= 480)
dev.off()
