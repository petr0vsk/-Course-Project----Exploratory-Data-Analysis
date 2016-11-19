
# --------------------------------------------
# Exploratory Data Analysis, Week 1,  Course Project
# petr0vskjy.aleksander@gmail.com
# Plot2
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
png("plot2.png", width=480, height=480)
plot(power.list$date.time, power.list$active.power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
