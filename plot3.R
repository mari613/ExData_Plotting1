# Create line graphs in subsequent order (sub1, sub2, sub3)
plot(feb_data$Datetime, feb_data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(feb_data$Datetime, feb_data$Sub_metering_2, type = "l", col = "red" )
lines(feb_data$Datetime, feb_data$Sub_metering_3, type = "l", col = "blue" )



# Create a legend in the top right of the graph
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))



# Copy to PNG file
dev.copy(png, file = "plot3.png")
dev.off()