electricdata<-read.csv("household_power_consumption.csv",header =  TRUE,stringsAsFactors = FALSE)
 
 newdatetime = strptime(paste(electricdata$Date, electricdata$Time, sep = " "),"%d/%m/%Y %H:%M:%S")
 electricdata<-cbind(newdatetime,electricdata)
 electricdata$Date = as.POSIXct(electricdata$Date,format = "%d/%m/%Y")
electricdata$Global_reactive_power = as.numeric(electricdata$Global_reactive_power)
electricdata$Voltage = as.numeric(electricdata$Voltage)

par(mfrow = c(2,2))
plot(z$newdatetime,z$Global_active_power,type = "l",ylab = "Global Active Power(kilowatts)",xlab = "",lwd = 1)
plot(z$newdatetime,z$Voltage,type= "l",ylab = "Voltage",xlab = "DateTime",lwd = 1)
plot(z$newdatetime,z$Sub_metering_1,type= "l",lwd = 1,ylab = "Energy Sub Metering",xlab = "")
		lines(z$newdatetime,z$Sub_metering_2,col = "red")
		lines(z$newdatetime,z$Sub_metering_3,col = "blue")
		legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd = 1,col = c("black","red","blue"))
plot(z$newdatetime,z$Global_reactive_power,type= "l",ylab = "Global_reactive_power",xlab = "DateTime",lwd = 1)

dev.copy(png, file = "plot4.png")
		 dev.off()