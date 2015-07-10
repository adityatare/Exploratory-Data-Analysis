------------------------------------------------------------------------------------
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>PROJECT 1<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
------------------------------------------------------------------------------------
library(lubridate)
setwd("C:/Users/G544078/Desktop/Coursera R Training/Exploratory Data Analytics/Project 1")
housepower <- read.table("./data/household_power_consumption.txt",
                         header=T,sep=";", na.strings='?',
                         colClasses=c(rep("character",2),rep("numeric",7)))

#convering Date and Time varaibles: - 
housepower$Date<-dmy(housepower$Date)
housepower$Time<-hms(housepower$Time)

#getting only the data we need for analysis: - 
start <- ymd('2007-02-01')
end <- ymd('2007-02-02')
data<-subset(housepower, Date %in% c(start, end))
data$datetime<-data$Date+data$Time



#-----------------------------------------------------------------------------------
#plot 1: - 
png(filename='plots/plot1.png',bg="transparent")
hist(data$Global_active_power, main='Global Active Power',xlab = "Global Active Power (Kilowatts)", col="red")
dev.off()
#-----------------------------------------------------------------------------------