## Reads in the data and prepares it for use

getdata <- function(full = FALSE) { 
  # I pre-extracted Feb 2007 using system grep on "/2/2007".
  # Just because I'm impatient and want it to load faster.
  if (full) filename = 'household_power_consumption.txt' 
  else filename = 'hpc_feb_2007.txt' 
  
  # Read in the data from the file 
  data <- read.csv(filename, colClasses = "character", sep = ';')
  
  # Just keep the days we are interested in.
  # The date list could be passed in as a parameter to the function
  # but it's not part of this project so just hard-coding for now.
  data <- subset(data, data[[1]] %in% c('1/2/2007', '2/2/2007'))
  
  # Convert any ? characters to NA
  data[data == '?'] <- NA
  
  # Convert the Date and Time columns to date and time classes
  data$Time = paste(data$Date, data$Time, sep=" ")
  data$Date <- as.Date(data$Date, "%d/%m/%Y")
  data$Time <- strptime(data$Time, format="%d/%m/%Y %H:%M:%S")
  
  # Convert the rest of the columns to numeric
  data[,3:9] <- sapply(data[,3:9], as.numeric )
  
  data
}