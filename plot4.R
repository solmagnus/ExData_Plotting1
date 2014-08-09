## Creates a png of 4 different plots
## Output file is plot4.png

plot4 <- function() {
    # Get the data for plotting
    source("getdata.R")
    d <- getdata()

    # Create the png file with the required parameters
    png("plot4.png", width=480, height=480)
    par(mar = c(5, 4, 4, 2), bg = NA, mfrow = c(2, 2))

    # Plot 1
    plot(d[,2],d[,3], col="black",
         ylab = 'Global Active Power',
         xlab = NA, main = NA, type = "o", pch = NA)

    # Plot 2
    plot(d[,2],d[,5], col="black",
         ylab = 'Voltage',
         xlab = 'datetime', main = NA, type = "o", pch = NA)

    # Plot 3
    plot(d[,2],d[,7], ylab = 'Energy sub metering', xlab = NA, main = NA,
         type = "o", pch = NA, lty = 1, col = "black")
    lines(d[,2],d[,8], type = "o", pch = NA, lty = 1, col = "red",
          xaxt = "n", yaxt = "n", ann = FALSE)
    lines(d[,2],d[,9], type = "o", pch = NA, lty = 1, col = "blue",
          xaxt = "n", yaxt = "n", ann = FALSE)
    box(lwd = 1)
    legend("topright", col = c("black","red","blue"),
           text.col = "black", lty = 1, bty = "n",
           legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

    # Plot 4
    plot(d[,2],d[,4], col="black",
         ylab = 'Global_reactive_power',
         xlab = 'datetime', main = NA, type = "o", pch = NA)

    dev.off()
}
