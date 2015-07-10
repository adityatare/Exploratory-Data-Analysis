------------------------------------------------------------------------------------
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>PROJECT 1<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
------------------------------------------------------------------------------------
library(lubridate)

#please set the working directory 

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
