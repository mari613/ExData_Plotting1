# Define display parameters (2x2 grid)
par(mfcol = c(2,2))



# Create line graphs in subsequent order (GAP, sub1-3, voltage, GRP)
plot(feb_data$Datetime, feb_data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")
plot(feb_data$Datetime, feb_data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
  lines(feb_data$Datetime, feb_data$Sub_metering_2, type = "l", col = "red" )
  lines(feb_data$Datetime, feb_data$Sub_metering_3, type = "l", col = "blue" )
  legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(feb_data$Datetime, feb_data$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
plot(feb_data$Datetime, feb_data$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")



# Copy to PNG file
dev.copy(png, file = "plot4.png")
dev.off()