source('cargar.R')#script for load the data
png(filename="plot3.png", width=480, height=480)#seting the image file with width and height

# making a line graph with base plot system. I use a library lubridate for DateTime variable.
plot(datos$DateTime, datos$Sub_metering_1, type='l',
     xlab='', ylab='Energy sub metering')# In spanish jue,vie,sab is equivalet for thu, fri, sat
lines(datos$DateTime, datos$Sub_metering_2, col='red')#add line graph for Sub_metering_2
lines(datos$DateTime, datos$Sub_metering_3, col='blue')#add line graph for Sub_metering_3
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid')
dev.off()#close device
