#Loading dataset
data(AirPassengers)

#Verifying the datasets
?AirPassengers
class(AirPassengers)
View(AirPassengers)

#Convert the dataset to dataframe
ap_df_months <- data.frame(
  year = floor(time(AirPassengers)),
  month = cycle(time(AirPassengers)),
  passengers = as.numeric(AirPassengers)
)
ap_df_months

#Basic plot
plot(AirPassengers)

#Plot with title,axis,labels and color
plot(
  AirPassengers,
  type = 'l',
  main = "Air Passengrs Trend Analysis",
  xlab = "Months",
  ylab = "No.of passengers",
  col= "violet"
)

#plot with line width & point
plot(
  AirPassengers,
  type = 'l',
  lwd =6,
  main = "Air Passengrs Trend Analysis",
  xlab = "Months",
  ylab = "No.of passengers",
  col= "pink"
  
)
points(
  AirPassengers,
  type ='o',
  pch = 10,
  col="blue"
)

