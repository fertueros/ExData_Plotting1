##script para exploratory data analysis.
library("sqldf")# I use this library for select cases with date are in range ('1/2/2007' to '2/2/2007')
library("lubridate")# In my computer is most powerful this library (I'm from Peru)

suppressWarnings(datos<- read.csv.sql("household_power_consumption.txt", sql = "SELECT * from file
WHERE Date in('1/2/2007','2/2/2007') ", sep = ";", header = TRUE))

datos[datos == "?"] <- NA

#*******************************************************
datos$Date<-dmy(datos$Date)
datos$Time<-hms(datos$Time)

datos$DateTime <- datos$Date + datos$Time

# R version 3.1.2 (2014-10-31)
# Run in Windows 32bits
# LC_TIME="Spanish_Spain.1252" (Sys.getlocale("LC_TIME"))
