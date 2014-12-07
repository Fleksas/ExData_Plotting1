# Indicating source for reading the data file
source("read_data.R")

# Reading data from the working ditectory
data  <- read_data()

# Creating and saving the third plot
png("plot3.png", width = 480, height = 480)

plot(data$Time,data$Sub_metering_1, type="l",ylab = "Energy sub metering", xlab="")
points(data$Time,data$Sub_metering_2, type="l", xlab="",col="red")
points(data$Time,data$Sub_metering_3, type="l", xlab="",col="blue")
legend("topright",lty = 1,lwd=2,col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
