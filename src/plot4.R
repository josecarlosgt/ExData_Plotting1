# Grid (plot 4) 

source("./src/initialise.R")

par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))

# Global active power
plot(data2$Standard_Time, data2$Global_active_power, type="l", col="black", xlab="", ylab="Global active power")

# Voltage
plot(data2$Standard_Time, data2$Voltage, type="l", col="black", xlab="Day", ylab="Voltage")

# Energy sub metering
plot(data2$Standard_Time, data2$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(data2$Standard_Time, data2$Sub_metering_2, type="l", col="red")
lines(data2$Standard_Time, data2$Sub_metering_3, type="l", col="blue")
legend("topright",pch=19,col=c("black","red", "blue"),legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

# Global reactive power
plot(data2$Standard_Time, data2$Global_reactive_power, type="l", col="black", xlab="Day", ylab="Global reactive power")

dev.copy(png, file = "./figure/plot4.png", width=480, height= 480)
dev.off()
