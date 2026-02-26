# Load dataset
data("airquality")

# View first 6 rows
head(airquality)

# Check structure
str(airquality)
# Remove NA values and calculate mean ozone per month
ozone_avg <- tapply(airquality$Ozone, airquality$Month, mean, na.rm = TRUE)

ozone_avg
# Create bar plot
barplot(ozone_avg,
        col = "skyblue",
        main = "Average Ozone Concentration per Month",
        xlab = "Month",
        ylab = "Average Ozone (ppb)",
        border = "darkblue")
