data <- read.table("household_power_consumption.txt",header =FALSE, sep =";",skip=66637,nrow=2880)

colnames(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

data$Date <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")

plot(Date,Sub_metering_1,type ="l",ylab ="Energy SUb Metering")
lines(Date,Sub_metering_2,col ="red")
lines(Date,Sub_metering_3,col ="blue")
legend("topright",legend =c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"),text.width =50000)

dev.copy(png,file="plot3.png",width=480,height=480,units="px")
dev.off()
