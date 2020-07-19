#setwd("C:/Users/cahar/Documents/COURSERA/Data Science/EDA/week 1/")

data<-read.csv("household_power_consumption.txt",sep=";")

data2<-subset(data,as.Date(Date,format="%d/%m/%Y")==as.Date("2007-02-01") | as.Date(Date,format="%d/%m/%Y")==as.Date("2007-02-02"))

windows()

par(mfcol=c(1,1))
hist(as.numeric(data2$Global_active_power),col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.copy(device=png,file="plot1.png")
dev.off()

