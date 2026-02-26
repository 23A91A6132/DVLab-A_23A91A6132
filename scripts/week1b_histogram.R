data("airquality")

# View first few rows
head(airquality)
hist(airquality$Temp,
     main = "Histogram of Daily Maximum Temperature (La Guardia Airport)",
     xlab = "Temperature (°F)",
     col = "pink",
     border = "red")
hist(airquality$Temp,
     probability = TRUE,
     main = "Temperature Distribution with Density Curve",
     xlab = "Temperature (°F)",
     col = "lightblue")

lines(density(airquality$Temp, na.rm = TRUE),
      col = "blue",
      lwd = 2)
