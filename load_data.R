#Load up all of the data into the workspace
data <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings = "?")

#Have a looksee at the first few rows
head(data)

#Select only the first two days in February 2007
first_feb <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]

#Check the current class of the Date feature vector
class(first_feb$Date)
#Currently a factor with 1442 levels....

#Convert Date into a DateTime class - keep in mind the different format
first_feb$Date <- as.Date(first_feb$Date, format="%d/%m/%Y")
class(first_feb$Date)
str(first_feb)

#Same thing for the Time feature vector
class(first_feb$Time)
first_feb$Time <- strptime(paste(first_feb$Date, first_feb$Time), format="%Y-%m-%d %H:%M:%S")

#Check out the new working data set
str(first_feb)
head(first_feb)