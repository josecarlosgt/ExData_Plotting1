# Global Active Power Histogram (plot 1) 

source("./src/initialise.R")

gap = data$Global_active_power

# Inspect the data
# head(table(gap))
# summary(gap)

# All good ...

hist(gap, main="Global Active Power",
  xlab="Global Active Power (kilowatts)", ylab="Frequency", col = "red")

dev.copy(png, file =  "./figure/plot1.png",  width=480, height= 480)
dev.off()
