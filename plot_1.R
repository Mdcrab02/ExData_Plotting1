#Generate the first plot, the histogram.  Keep in mind the specified size:
#   480x480

#Run the load_data script if everything isn't already in the environment
source("load_data.R")


#Create the first plot, display it, and export it to a PNG of specified size.
with(first_feb, hist(Global_active_power, col="red", 
                         breaks=15,
                         xlab="Global Active Power (kilowatts)",
                         main="Global Active Power",
                         ylim=c(0,1200)))

#Export
dev.copy(png,'plot_1.png',  width = 480, height = 480)
dev.off()