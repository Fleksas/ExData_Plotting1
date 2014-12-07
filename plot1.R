# Indicating source for reading the data file
source("read_data.R")

# Reading data from the working ditectory
data  <- read_data()

# Creating and saving the first plot 
png("plot1.png", width = 480, height = 480) 

hist(data$Global_active_power,col="red",main = "Global Active Power",xlab= "Global Active Power (kilowatts)")

dev.off()
