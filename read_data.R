read_data  <- function(){
        # Downloading the file from the Cloudfront website
        if (!file.exists("./household_power_consumption.txt")) {
                
                url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
                download.file(url, destfile = "./hpc.zip")
                
                # Unzipng downloaded file in the working directory
                unzip("./hpc.zip", exdir = ".", unzip = "internal")
        }
        
        # Reading unziped file from the working directory
        name  <- "household_power_consumption.txt"
        cclass  <- c("character","character",rep("numeric",7))
        temp  <- read.table(name,sep = ";", header = TRUE, colClasses = cclass, na.string ="?")
        
        # Changing classes for Time and Date variables
        temp$Time  <- strptime(paste(temp$Date,temp$Time),"%d/%m/%Y %H:%M:%S")
        temp$Date  <- as.Date(temp$Date, "%d/%m/%Y")
        
        # Subestting a data set from 2007-02-01 utill 2007-02-02
        data <- temp[which(temp$Date >= "2007-02-01" & temp$Date <="2007-02-02"),]
        return(data)
}
