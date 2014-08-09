## Creates a png line chart of
## Global Active Power by time
## Output file is plot2.png

plot2 <- function() {
    # Get the data for plotting
    source("getdata.R")
    d <- getdata()

    # Create the png file with the required parameters
    png("plot2.png", width=480, height=480)
    par(mar = c(5, 4, 4, 2), bg = NA)
    plot(d[,2],d[,3], col="black",
         ylab = 'Global Active Power (kilowatts)',
         xlab = NA, main = NA, type = "o", pch = NA)
    dev.off()
}
