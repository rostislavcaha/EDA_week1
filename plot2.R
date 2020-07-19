#setwd("C:/Users/cahar/Documents/COURSERA/Data Science/EDA/week 1/")

data<-read.csv("household_power_consumption.txt",sep=";")

data2<-subset(data,as.Date(Date,format="%d/%m/%Y")==as.Date("2007-02-01") | as.Date(Date,format="%d/%m/%Y")==as.Date("2007-02-02"))

windows()

Sys.setlocale("LC_TIME", "us") 
par(mfcol=c(1,1))
with(data2,plot(as.POSIXct(strptime(paste(Date,Time,sep=" "),format="%d/%m/%Y %H:%M:%S")),as.numeric(Global_active_power),type="n",ylab="Global Active Power (kilowatts)",xlab=""))
with(data2,lines(as.POSIXct(strptime(paste(Date,Time,sep=" "),format="%d/%m/%Y %H:%M:%S")),as.numeric(Global_active_power)))
dev.copy(device=png,file="plot2.png")
dev.off()

