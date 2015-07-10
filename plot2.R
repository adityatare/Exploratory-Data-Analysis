#plot 2
png(filename='plots/plot2.png',bg="transparent")
plot(data$datetime,data$Global_active_power,type="l", ylab="Global Active Power (Kilowatts)", xlab="")
dev.off()