#setwd("C:/Users/cahar/Documents/COURSERA/Data Science/EDA/week 1/")

data<-read.csv("household_power_consumption.txt",sep=";")

data2<-subset(data,as.Date(Date,format="%d/%m/%Y")==as.Date("2007-02-01") | as.Date(Date,format="%d/%m/%Y")==as.Date("2007-02-02"))

windows()
par(mfcol=c(2,2))

#first
Sys.setlocale("LC_TIME", "us") 
with(data2,plot(as.POSIXct(strptime(paste(Date,Time,sep=" "),format="%d/%m/%Y %H:%M:%S")),as.numeric(Global_active_power),type="n",ylab="Global Active Power",xlab=""))
with(data2,lines(as.POSIXct(strptime(paste(Date,Time,sep=" "),format="%d/%m/%Y %H:%M:%S")),as.numeric(Global_active_power)))

#second
with(data2,plot(as.POSIXct(strptime(paste(Date,Time,sep=" "),format="%d/%m/%Y %H:%M:%S")),as.numeric(Sub_metering_1),type="n",ylab="Energy sub metering",xlab=""))
with(data2,lines(as.POSIXct(strptime(paste(Date,Time,sep=" "),format="%d/%m/%Y %H:%M:%S")),as.numeric(Sub_metering_1),col="black"))
with(data2,lines(as.POSIXct(strptime(paste(Date,Time,sep=" "),format="%d/%m/%Y %H:%M:%S")),as.numeric(Sub_metering_2),col="red"))
with(data2,lines(as.POSIXct(strptime(paste(Date,Time,sep=" "),format="%d/%m/%Y %H:%M:%S")),as.numeric(Sub_metering_3),col="blue"))
legend("topright",pch=NA,lty=1, bty="n",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

#third
with(data2,plot(as.POSIXct(strptime(paste(Date,Time,sep=" "),format="%d/%m/%Y %H:%M:%S")),as.numeric(Voltage),type="n",ylab="Voltage",xlab="datetime"))
with(data2,lines(as.POSIXct(strptime(paste(Date,Time,sep=" "),format="%d/%m/%Y %H:%M:%S")),as.numeric(Voltage)))

#fourth
with(data2,plot(as.POSIXct(strptime(paste(Date,Time,sep=" "),format="%d/%m/%Y %H:%M:%S")),as.numeric(Global_reactive_power),type="n",ylab="Global_reactive_power",xlab="datetime"))
with(data2,lines(as.POSIXct(strptime(paste(Date,Time,sep=" "),format="%d/%m/%Y %H:%M:%S")),as.numeric(Global_reactive_power)))
dev.copy(device=png,file="plot4.png")
dev.off()
