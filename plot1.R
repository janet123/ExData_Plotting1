dat <- fread("household_power_consumption.txt")
dat$Date <- as.Date(dat$Date, format="%d/%m/%Y")
data <- dat[dat$Date>=as.Date("2007-02-01") & dat$Date<=as.Date("2007-02-02")]
data$Global_active_power <- as.numeric(data$Global_active_power)
png("plot1.png")
hist(data$Global_active_power, xlab="Global Active Power (kilowatts)", main="Global Active Power", col="red")
dev.off()