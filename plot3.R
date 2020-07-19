#setwd("C:/Users/cahar/Documents/COURSERA/Data Science/EDA/week 1/")

data<-read.csv("household_power_consumption.txt",sep=";")

data2<-subset(data,as.Date(Date,format="%d/%m/%Y")==as.Date("2007-02-01") | as.Date(Date,format="%d/%m/%Y")==as.Date("2007-02-02"))

windows()
Sys.setlocale("LC_TIME", "us") 
par(mfcol=c(1,1))
with(data2,plot(as.POSIXct(strptime(paste(Date,Time,sep=" "),format="%d/%m/%Y %H:%M:%S")),as.numeric(Sub_metering_1),type="n",ylab="Energy sub metering",xlab=""))
with(data2,lines(as.POSIXct(strptime(paste(Date,Time,sep=" "),format="%d/%m/%Y %H:%M:%S")),as.numeric(Sub_metering_1),col="black"))
with(data2,lines(as.POSIXct(strptime(paste(Date,Time,sep=" "),format="%d/%m/%Y %H:%M:%S")),as.numeric(Sub_metering_2),col="red"))
with(data2,lines(as.POSIXct(strptime(paste(Date,Time,sep=" "),format="%d/%m/%Y %H:%M:%S")),as.numeric(Sub_metering_3),col="blue"))
legend("topright",pch=NA,lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.copy(device=png,file="plot3.png")
dev.off()

