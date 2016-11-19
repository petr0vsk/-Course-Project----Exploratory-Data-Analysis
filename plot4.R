
# --------------------------------------------
# Exploratory Data Analysis, Week 1,  Course Project
# petr0vskjy.aleksander@gmail.com
# Plot 4
# -------------------------------------------
#
#clear memory
rm(list=ls())
# file with function`s
source("/home/petr0vsk/Project1/global.R")
#
library(tidyr)
library(dplyr)
library(plyr)
library(stringr)
library(sqldf)

# set directory
set.right.directory()
# get list of clear data
power.list <- read.and.save.data()
# make picter 
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 
plot(power.list$date.time, power.list$active.power, type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(power.list$date.time, power.list$voltage, type="l", xlab="datetime", ylab="Voltage")
plot(power.list$date.time, power.list$sub.metering1, type="l", ylab="Energy Submetering", xlab="")
lines(power.list$date.time, power.list$sub.metering2, type="l", col="red")
lines(power.list$date.time, power.list$sub.metering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
plot(power.list$date.time, power.list$active.power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()



