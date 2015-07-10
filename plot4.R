#question 4 : - 
png(filename='plots/plot4.png',bg="transparent")

      par( mfrow =c(2,2), oma=c(2,1,1,1))
      
      #topleft
      plot(data$datetime,data$Global_active_power,type="l", ylab="Global Active Power (Kilowatts)", xlab="")
      
      #topright
      plot(data$datetime,data$Voltage,type="l", xlab="datetime", ylab="Voltage")
      
      #bottomleft
      {plot(data$datetime,data$Sub_metering_1,type="l", ylab="Energy sub metering", xlab="")
       lines(data$datetime,data$Sub_metering_2,col="red")
       lines(data$datetime,data$Sub_metering_3,col="blue")
       legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1, col=c("black","red","blue"),bty = "n")}
      
      #bottomright
      plot(data$datetime,data$Global_reactive_power,type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
