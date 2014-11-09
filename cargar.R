##script para exploratory data analysis.
library("sqldf")
library("lubridate")

suppressWarnings(datos<- read.csv.sql("household_power_consumption.txt", sql = "SELECT * from file
WHERE Date in('1/2/2007','2/2/2007') ", sep = ";", header = TRUE))

datos[datos == "?"] <- NA

#*******************************************************
datos$Date<-dmy(datos$Date)
datos$Time<-hms(datos$Time)

datos$DateTime <- datos$Date + datos$Time