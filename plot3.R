#plot 3
png(filename='plots/plot3.png',bg="transparent")
plot(data$datetime,data$Sub_metering_1,type="l", ylab="Energy sub metering", xlab="")
lines(data$datetime,data$Sub_metering_2,col="red")
lines(data$datetime,data$Sub_metering_3,col="blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1, col=c("black","red","blue"))
dev.off()