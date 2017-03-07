# Create line graph (type 1)
plot(feb_data$Datetime, feb_data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")


# Copy to PNG file
dev.copy(png, file = "plot2.png")
dev.off()