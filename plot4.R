source('cargar.R')
png(filename="plot4.png", width=480, height=480)
par(mfcol=c(2,2))
plot(datos$DateTime, 
     datos$Global_active_power, type="l",col="black", xlab="", 
     ylab="Global Active Power", 
     main="")

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
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(datos$DateTime, 
     datos$Voltage, type="l", col="black", xlab="datetime", ylab="Voltage", 
     main="")

plot(datos$DateTime, 
     datos$Global_reactive_power, type="l", col="black", xlab="datetime", 
     ylab="Global_reactive_power", 
     main="")

dev.off()
