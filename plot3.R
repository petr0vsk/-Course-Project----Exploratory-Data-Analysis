
# --------------------------------------------
# Exploratory Data Analysis, Week 1,  Course Project
# petr0vskjy.aleksander@gmail.com
# Plot 3
# -------------------------------------------
#
#clear memory
rm(list=ls())
#
source("/home/petr0vsk/Project1/global.R")
# file with function`s
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
png("plot3.png", width=480, height=480)
plot(power.list$date.time, power.list$sub.metering1, type="l", ylab="Energy Submetering", xlab="")
lines(power.list$date.time, power.list$sub.metering2, type="l", col="red")
lines(power.list$date.time, power.list$sub.metering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
