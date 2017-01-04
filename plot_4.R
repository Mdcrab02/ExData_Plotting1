#Generate the fourth plot and keep it 480x480

#Run the load_data script if everything isn't already in the environment
source("load_data.R")

#Create the fourth plot (of 4 plots), display it, and export it to a PNG of specified size.
#Set the layout of the overall graphic
par(mfrow=c(2,2))

#Plot the first
with(first_feb, plot(Time, Global_active_power, 
                         type="l",
                         xlab="", ylab="Global Active Power", 
                         cex.lab=0.7, cex.axis=0.8))

#Plot the second
with(first_feb, plot(Time, Voltage, 
                         type="l",
                         xlab="", ylab="Voltage", 
                         cex.lab=0.7, cex.axis=0.8))

#Plot the third
plot(first_feb$Time, first_feb$Sub_metering_1, 
     type="l", ylab="Energy sub metering", xlab="", cex.lab=0.7, cex.axis=0.8)

  lines(first_feb$Time, first_feb$Sub_metering_2, col="red")
  lines(first_feb$Time, first_feb$Sub_metering_3, col="blue")
  
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=c(1,1,1), col=c("black","red", "blue"), cex=0.7, bty="n")

#Plot the fourth
with(first_feb, plot(Time, first_feb$Global_reactive_power, 
                         type="l",lwd=0.5,
                         xlab="datetime", ylab="Global_reactive_power", 
                         cex.lab=0.7, cex.axis=0.8))

#Export
dev.copy(png,'plot_4.png',  width = 480, height = 480)
dev.off()