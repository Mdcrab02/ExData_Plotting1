#Generate the third plot and keep it 480x480

#Run the load_data script if everything isn't already in the environment
source("load_data.R")

#Create the third plot, display it, and export it to a PNG of specified size.
plot(first_feb$Time, first_feb$Sub_metering_1, 
     type="l", ylab="Energy sub metering", cex.lab=0.7)

#Add the lines for sub_metering_2 and 3 to the plot.  red and blue respectively
lines(first_feb$Time, first_feb$Sub_metering_2, col="red")
lines(first_feb$Time, first_feb$Sub_metering_3, col="blue")

#Add the legend to the plot
legend("topright",
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=c(1,1,1), col=c("black","red", "blue"), cex=0.8)

#Export
dev.copy(png,'plot_3.png',  width = 480, height = 480)
dev.off()