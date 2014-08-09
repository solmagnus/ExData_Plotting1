## Creates a png histogram plot of Global Active Power
## Output file is plot1.png

plot1 <- function() {
    # Get the data for plotting
    source("getdata.R")
    d <- getdata()

    # Create the png file with the required parameters
    png("plot1.png", width=480, height=480)
    par(mar = c(5, 4, 4, 2), bg = NA)
    hist(d[,3], col="red",
         xlab = 'Global Active Power (kilowatts)',
         main = 'Global Active Power')
    dev.off()
}
