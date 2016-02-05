# Global Active Power Histogram (plot 1) 

source("./src/initialise.R")

gap = data$Global_active_power

# Inspect the data
# head(table(gap))
# summary(gap)

# All good ...

png("./figure/plot1.png", width=480, height=480)

hist(gap, main="Global Active Power",
  xlab="Global Active Power (kilowatts)", ylab="Frequency", col = "red")

dev.off()
