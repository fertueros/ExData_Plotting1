source('cargar.R')
png(filename="plot3.png", width=480, height=480)

# haciendo el grafico
plot(datos$DateTime, datos$Sub_metering_1, type='l',
     xlab='', ylab='Energy sub metering')
lines(datos$DateTime, datos$Sub_metering_2, col='red')
lines(datos$DateTime, datos$Sub_metering_3, col='blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid')
dev.off()