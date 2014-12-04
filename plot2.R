source('cargar.R')# script for load the data
png(filename = "plot2.png", width = 480, height = 480)# seting the image file with width and hight
plot(datos$DateTime, datos$Global_active_power, type="l", xlab="", 
     ylab="Global Active Power (kilowatts)")# making a line graph with base plot system
dev.off()# close the device
