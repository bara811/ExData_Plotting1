# Plot a line  chart of the Global Active Power Data from the household power consumption data set
# Load the data - only read in the data for 1/2/17 and 2/2/17
# Load the column names separately and then add them in afterwards

dt1 <- read.table("household_power_consumption.txt",skip=66637 ,nrows= 24*60*2, sep=";")
dtnames <- read.table("household_power_consumption.txt",skip=0 ,nrows= 1, sep=";")
names(dt1) <- dtnames

# Convert the date and time into another format

dt1$Date <- as.Date(dt1$Date, "%Y-%m-%d")
dt1$Time <- strptime(dt1$Time, "%H:%M:%S")

# Open a png file

png("plot2.png", width = 480, height = 480)

# Create the plot

plot(dt1$Global_active_power, type = "l", xlab = "", ylab = "Global active power (kilowatts)", xaxt = "n")
axis(side = 1, at = c(0, 1440, 2880), labels = c("Thu","Fri","Sat"))

# Close the png file

dev.off()