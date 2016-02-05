# Grid (plot 4) 

source("./src/initialise.R")

png("./figure/plot4.png", width=480, height= 480)

par(mfrow = c(2, 2))

# Global active power
plot(data2$Standard_Time, data2$Global_active_power, type="l", col="black", xlab="", ylab="Global active power")

# Voltage
plot(data2$Standard_Time, data2$Voltage, type="l", col="black", xlab="Day", ylab="Voltage")

# Energy sub metering
plot(data2$Standard_Time, data2$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(data2$Standard_Time, data2$Sub_metering_2, type="l", col="red")
lines(data2$Standard_Time, data2$Sub_metering_3, type="l", col="blue")
legend("topright",col=c("black","red", "blue"), lty=1, lwd=2,
       legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

# Global reactive power
plot(data2$Standard_Time, data2$Global_reactive_power, type="l", 
     col="black", xlab="Day", ylab="Global reactive power")

dev.off()
