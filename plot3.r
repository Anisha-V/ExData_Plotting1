electricdata<-read.csv("household_power_consumption.csv",header =  TRUE,stringsAsFactors = FALSE)
 
 newdatetime = strptime(paste(electricdata$Date, electricdata$Time, sep = " "),"%d/%m/%Y %H:%M:%S")
 electricdata<-cbind(newdatetime,electricdata)
 electricdata$Date = as.POSIXct(electricdata$Date,format = "%d/%m/%Y")


 electricdata$Sub_metering_1 = as.numeric(electricdata$Sub_metering_1)
 electricdata$Sub_metering_2 = as.numeric(electricdata$Sub_metering_2)
 electricdata$Sub_metering_3 = as.numeric(electricdata$Sub_metering_3)
		 

y<-subset(electricdata, Date == "2007-02-02")
		 x<-subset(electricdata, Date == "2007-02-01")
		 z<-rbind(x,y)
		plot(z$newdatetime,z$Sub_metering_1,type= "l",lwd = 2,ylab = "Energy Sub Metering",xlab = "")
		lines(z$newdatetime,z$Sub_metering_2,col = "red")
		lines(z$newdatetime,z$Sub_metering_3,col = "blue")
		legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd = 2,col = c("black","red","blue"))
		
		dev.copy(png, file = "plot3.png")
		 dev.off()