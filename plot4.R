#this code creates plot4

png(filename = "plot4.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")

par(mfrow = c(2, 2))

#this is the first plot (top-left)
plot(sub['DateTime'][,], sub['Global_active_power'][,], 
     type = "l",
     xlab = "", ylab = "Global Active Power")

#this is the second plot (top-right)
plot(sub['DateTime'][,], sub['Voltage'][,],
     type = "l",
     xlab = "datetime", ylab = "Voltage")

#this is the third plot (bottom-left)
plot(sub['DateTime'][,], sub['Sub_metering_1'][,], 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(sub['DateTime'][,], sub['Sub_metering_2'][,], col = "red")
lines(sub['DateTime'][,], sub['Sub_metering_3'][,], col = "blue")
legend("topright", 
       bty = "n",
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

#this is the fourth plot (bottom-right)
plot(sub['DateTime'][,], sub['Global_reactive_power'][,], 
     type = "l",
     col = "black",
     xlab = "datetime", ylab = 'Global_reactive_power')
     
dev.off()
