data <- read.table("household_power_consumption.txt",header =FALSE, sep =";",skip=66637,nrow=2880)

colnames(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

data$Date <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")
attach(data)
plot(Date,Global_active_power,type ="l",ylab ="Global Active Power (kilowatts)")
dev.copy(png,file="plot2.png",width=480,height=480,units="px)
dev.off()
