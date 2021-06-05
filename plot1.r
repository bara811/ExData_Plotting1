# Plot a histogram of the Global Active Power Data from the household power consumption data set
# Load the data - only read in the data for 1/2/17 and 2/2/17
# Load the column names separately and then add them in afterwards

dt1 <- read.table("household_power_consumption.txt",skip=66637 ,nrows= 24*60*2, sep=";")
dtnames <- read.table("household_power_consumption.txt",skip=0 ,nrows= 1, sep=";")
names(dt1) <- dtnames

# Open a png file

png("plot1.png", width = 480, height = 480)

# Create the plot

with(dt1, hist(Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)"))

# Close the png file

dev.off()