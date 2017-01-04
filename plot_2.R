#Generate the second plot and keep it 480x480

#Run the load_data script if everything isn't already in the environment
source("load_data.R")

#Create the second plot, display it, and export it to a PNG of specified size.
with(first_feb, plot(Time, Global_active_power, 
                         type="l",
                         xlab="",
                         ylab="Global Active Power (in kilowatts)",
                         cex.lab=0.7, cex.axis=0.8))

#Export
dev.copy(png,'plot_2.png',  width = 480, height = 480)
dev.off()