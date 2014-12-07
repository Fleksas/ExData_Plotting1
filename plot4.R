# Indicating source for reading the data file
source("read_data.R")

# Reading data from the working ditectory
data  <- read_data()

# Creating and saving the forth plot
png("plot4.png", width = 480, height = 480)

par(mfrow= c(2,2), mar = c(4,4,2,2))

with(data, {
        plot(data$Time,data$Global_active_power, type="l",ylab = "Global Active Power", xlab="")
        plot(data$Time,data$Voltage, type="l",ylab = "Voltage", xlab="datetime")
        plot(data$Time,data$Sub_metering_1, type="l",ylab = "Energy sub metering", xlab="")
        points(data$Time,data$Sub_metering_2, type="l", xlab="",col="red")
        points(data$Time,data$Sub_metering_3, type="l", xlab="",col="blue")
        legend("topright",lty = 1,lwd=2,col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")
        plot(data$Time,data$Global_reactive_power, type="l",ylab = "Global_reactive_power", xlab="datetime")
})

dev.off()
