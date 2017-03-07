# Load data, subset, and reformat data types
hh_pwr_con <- read.table("household_power_consumption.txt", header = TRUE, sep=";", na.strings = "?")

feb_data <- subset(hh_pwr_con, hh_pwr_con$Date=="1/2/2007" | hh_pwr_con$Date =="2/2/2007")

feb_data$Global_active_power <- as.numeric(as.character(feb_data$Global_active_power))
feb_data$Global_reactive_power <- as.numeric(as.character(feb_data$Global_reactive_power))
feb_data$Sub_metering_1 <- as.numeric(as.character(feb_data$Sub_metering_1))
feb_data$Sub_metering_2 <- as.numeric(as.character(feb_data$Sub_metering_2))
feb_data$Sub_metering_3 <- as.numeric(as.character(feb_data$Sub_metering_3))
feb_data$Voltage <- as.numeric(as.character(feb_data$Voltage))
feb_data$Datetime <- strptime(paste(feb_data$Date, feb_data$Time), "%d/%m/%Y %H:%M:%S")



# Create histogram
hist(feb_data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")



# Copy to PNG file
dev.copy(png, file = "plot4.png")
dev.off()