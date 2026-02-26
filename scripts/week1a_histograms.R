# Load dataset
data("VADeaths")

# View dataset
VADeaths

# Convert matrix to numeric vector for histogram
va_values <- as.vector(VADeaths)
hist(va_values,
     main = "Histogram of VA Death Rates",
     xlab = "Death Rates",
     col = "skyblue",
     border = "blue")
hist(va_values,
     breaks = 10,
     main = "Histogram with 10 Breaks",
     xlab = "Death Rates",
     col = "lightgreen",
     border = "darkgreen")
hist(va_values,
     probability = TRUE,
     main = "Probability Density Histogram",
     xlab = "Death Rates",
     col = "orange")

lines(density(va_values), col = "red", lwd = 2)
