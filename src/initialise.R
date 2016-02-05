# INITIALISATION 

# LOAD DATA
data = read.csv("./data/csamples.txt", header=TRUE, sep=";")

# Inspect the data
# head(data)
# nrow(data)

# Generate standard time
sTime = strptime(paste(data$Date, " ", data$Time), "%d/%m/%Y %H:%M:%S")
data2 <- cbind(data, Standard_Time = sTime)

