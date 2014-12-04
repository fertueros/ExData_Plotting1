source('cargar.R')# script for load the data
png(filename="plot1.png", width=480, height=480)# set the image file with width and height
hist(datos$Global_active_power, col="red", 
     xlab="Global Active Power (kilowatts)", 
     main="Global Active Power")
dev.off()# close the device
