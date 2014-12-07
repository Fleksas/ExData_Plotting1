# Indicating source for reading the data file
source("read_data.R")

# Reading data from the working ditectory
data  <- read_data()

# Creating the second plot (3 steps)
png("plot2.png", width = 480, height = 480)

plot(data$Time,data$Global_active_power, type="l",ylab = "Global Active Power (kilowatts)", xlab="")

dev.off()
