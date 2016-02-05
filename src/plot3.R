# Energy sub metering (plot 3) 

source("./src/initialise.R")

png("./figure/plot3.png", width=480, height=480)

plot(data2$Standard_Time, data2$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering"
)
lines(data2$Standard_Time, data2$Sub_metering_2, type="l", col="red")
lines(data2$Standard_Time, data2$Sub_metering_3, type="l", col="blue")
legend("topright", lty=1, lwd=2, col=c("black","red", "blue"), 
       legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

dev.off()
