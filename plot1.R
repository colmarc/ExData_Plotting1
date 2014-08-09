png(filename = "plot1.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
hist(c(sub['Global_active_power'][,]),main='Global Active Power', col='red',xlab='Gloabl Active Power (Kilowatts)', ylim=range(0,1200), xlim=range(0,6))
dev.off()
