source('cargar.R')#script for load the data
png(filename="plot4.png", width=480, height=480)#seting the image file with width and hight
par(mfcol=c(2,2))# divide the graph area in 4 parts. Two rows and two columns
plot(datos$DateTime, 
     datos$Global_active_power, type="l",col="black", xlab="", 
     ylab="Global Active Power", 
     main="")#making the firts line graph - Global_active_power

plot(datos$DateTime, 
     datos$Sub_metering_1, type="l", col="black", xlab="", 
     ylab="Energy sub metering", 
     main="")
lines(datos$DateTime, datos$Sub_metering_2, col="red")
lines(datos$DateTime, datos$Sub_metering_3, col="blue")
legend("topright", 
       lwd=1, 
       lty=1, 
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))#2º graph, is plot3.R

plot(datos$DateTime, 
     datos$Voltage, type="l", col="black", xlab="datetime", ylab="Voltage", 
     main="")#3º graph. Line graph for voltage

plot(datos$DateTime, 
     datos$Global_reactive_power, type="l", col="black", xlab="datetime", 
     ylab="Global_reactive_power", 
     main="")# 4º graph. Another line graph. For Global_reactive_power

dev.off()# close device
