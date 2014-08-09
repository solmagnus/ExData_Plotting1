## Creates a png line chart of
## Energy sub metering by Time
## Output file is plot3.png

plot3 <- function() {
    # Get the data for plotting
    source("getdata.R")
    d <- getdata()

    # Create the png file with the required parameters
    png("plot3.png", width=480, height=480)
    par(mar = c(5, 4, 4, 2), bg = NA)
    plot(d[,2],d[,7], ylab = 'Energy sub metering', xlab = NA, main = NA,
         type = "o", pch = NA, lty = 1, col = "black")
    lines(d[,2],d[,8], type = "o", pch = NA, lty = 1, col = "red",
          xaxt = "n", yaxt = "n", ann = FALSE)
    lines(d[,2],d[,9], type = "o", pch = NA, lty = 1, col = "blue",
          xaxt = "n", yaxt = "n", ann = FALSE)
    box(lwd = 1)
    legend("topright", col = c("black","red","blue"), text.col = "black", lty=1,
           legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
    dev.off()
}
