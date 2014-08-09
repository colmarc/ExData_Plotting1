#This code creates plot3

png(filename = "plot3.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")

plot(sub['DateTime'][,], sub['Sub_metering_1'][,], 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(sub['DateTime'][,], sub['Sub_metering_2'][,],
      col = "red")
lines(sub['DateTime'][,], sub['Sub_metering_3'][,], 
      col = "blue")
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

dev.off()
