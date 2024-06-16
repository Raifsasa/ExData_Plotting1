> if(!file.exists('figures')) dir.create('figures')
> png(filename = './figures/plot1.png', width = 480, height = 480, units='px')
> hist(data$Global_active_power,breaks = 12,col="red",xlab="Global Active Power(kilowatts)",ylab = "Frequency",main = "Global Active Power")
> dev.off()