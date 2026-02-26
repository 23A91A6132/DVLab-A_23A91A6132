# Load dataset
data("airquality")

# View first few rows
head(airquality)

# Check structure
str(airquality)
# Create boxplots for main air quality parameters
boxplot(airquality[, 1:4],
        main = "Box Plot of Air Quality Parameters",
        col = c("skyblue", "lightgreen", "orange", "pink"),
        ylab = "Values",
        names = c("Ozone", "Solar.R", "Wind", "Temp"))
