electricdata<-read.csv("household_power_consumption.csv",header =  TRUE,stringsAsFactors = FALSE)
	electricdata$Global_active_power = as.numeric(electricdata$Global_active_power)
	electricdata$Date = as.Date(electricdata$Date,format = "%d/%m/%Y")
	electricdata$Time = strptime(electricdata$Time,format = "%H/%M/%S")
	
		y<-subset(electricdata, Date == "2007-02-01")
		 x<-subset(electricdata, Date == "2007-02-02")
		 z<-rbind(x,y)
		 
		 hist(z$Global_active_power,col = "red",main = "Global Active Power",xlab = "Global Active Power(kilowatts)")
		 dev.copy(png, file = "plot1.png")
		 dev.off()
		 
		 
		 
		 # y<-subset(electricdata, Date == "2007-02-01")
		 # x<-subset(electricdata, Date == "2007-02-02")
		 # w<-subset(electricdata, Date == "2007-02-03")
		 # z<-rbind(x,y,w)
		 # plot(z$Date,z$Global_active_power)
		 
		 # electricdata$Time = strptime(electricdata$Time,format = "%d/%m/%Y %H:%M:%S")
		 
		 # electricdata$Date = as.POSIXct(electricdata$Date,format = "%d/%m/%Y")
		 # electricdata$Time = as.POSIXct(electricdata$Time,format = "%H:%M:%S")
		 
		
		 
		
		 
		 
		
		
		 