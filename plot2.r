electricdata<-read.csv("household_power_consumption.csv",header =  TRUE,stringsAsFactors = FALSE)
	electricdata$Global_active_power = as.numeric(electricdata$Global_active_power)
	
	 newdatetime = strptime(paste(electricdata$Date, electricdata$Time, sep = " "),"%d/%m/%Y %H:%M:%S")
		 electricdata<-cbind(newdatetime,electricdata)
		 electricdata$Date = as.Date(electricdata$Date,format = "%d/%m/%Y")
		  y<-subset(electricdata, Date == "2007-02-02")
		 x<-subset(electricdata, Date == "2007-02-01")
		 z<-rbind(x,y)
		plot(z$newdatetime,z$Global_active_power,type = "l",ylab = "Global Active Power(kilowatts)",xlab = "")
		
		dev.copy(png, file = "plot2.png")
		 dev.off()