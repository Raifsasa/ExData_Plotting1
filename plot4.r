> data$Date <- as.Date(data$Date, format = '%d/%m/%Y')
> data$DateTime <- as.POSIXct(paste(data$Date, data$Time))
> png(filename = './figures/plot4.png', width = 480, height = 480, units='px')
> Sys.setlocale(category = "LC_ALL", locale = "english")
> par(mfrow = c(2, 2))
> with(data, {
+ plot(data$DateTime, data$Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'l')
+ lines(data$DateTime, data$Sub_metering_2, col = 'red')
+ lines(data$DateTime, data$Sub_metering_3, col = 'blue')
+ plot(data$DateTime, Global_reactive_power, xlab = 'datetime', ylab = 'Global_reactive_power', type = 'l')
+ })
> dev.off()