# --------------------------------------------
# Exploratory Data Analysis, Week 1,  Course Project
# petr0vskjy.aleksander@gmail.com
# 
# -------------------------------------------
# Global function for plot1.R - plot4.R

# set right directiry
 set.right.directory <-function() {
   
   project.dir <- "/home/petr0vsk/Project1"
   stopifnot( dir.exists(file.path(project.dir))  )
   setwd(file.path(project.dir))
 }
#read data and convert it to right format
 read.and.save.data <- function(){
   # read column`s only from the dates 2007-02-01 and 2007-02-02
   file <- read.csv.sql(file = 'household_power_consumption.txt',sep=";", header=TRUE, "select *  from file where Date='1/2/2007' or Date = '2/2/2007'")
   closeAllConnections()
   date.time    <- strptime(paste(file$Date, file$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
   active.power <- as.numeric(file$Global_active_power)
   sub.metering1 <- as.numeric(file$Sub_metering_1)
   sub.metering2 <- as.numeric(file$Sub_metering_2)
   sub.metering3 <- as.numeric(file$Sub_metering_3)
   sub.metering4 <- as.numeric(file$Sub_metering_4)
   voltage <- as.numeric(file$Voltage)
   power.list <- list("date.time" = date.time,  "active.power" = active.power, "sub.metering1" = sub.metering1, "sub.metering2" = sub.metering2, "sub.metering3" = sub.metering3, "sub.metering4" = sub.metering2, "voltage" = voltage )
   return(power.list)
 }
