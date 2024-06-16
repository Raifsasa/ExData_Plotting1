> data$Date <- as.Date(data$Date, format = '%d/%m/%Y')
> data$DateTime <- as.POSIXct(paste(data$Date, data$Time))
> png(filename = './figures/plot2.png', width = 480, height = 480, units='px')
> Sys.setlocale(category = "LC_ALL", locale = "english")
> plot(data$DateTime, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)',type = "l")
> dev.off()