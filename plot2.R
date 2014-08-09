#This code creates plot2

png(filename = "plot2.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")

plot(sub['DateTime'][,],sub['Global_active_power'][,],
  col='black',
  ylab='Global Active Power (Kilowatts)', 
  xlab= '', 
  type='l', 
  ylim=range(0,6))

dev.off()
