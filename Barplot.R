
#Loading dataset
data(iris)

#Checking dataset
?iris
head(iris,5)
str(iris)
class(iris)

#Very basic bar chart
#count of eachspecies
#To view data in Species column
iris$Species
View(iris)

#Plotting bar chart
barplot(
  table(iris$Species),
  col = 'darkblue'
)

#Plotting labled barchart
barplot(
  table(iris$Species),
  main="Count of species",
  xlab = "Species",
  ylab = "No of species",
  col = 'darkred'
)

#
mean_sepal <- tapply(iris$Sepal.Length, iris$Species,mean)
mean_sepal
barplot(
  mean_sepal,
  main="Avg sepal length by species",
  xlab = "Species",
  ylab = "Mean sepal length by species",
  col = 'maroon'
)

#Grouped Bar chart(Compare sepal & petal length(mean))
group_means <- rbind(
  Sepal = tapply(iris$Sepal.Length, iris$Species,mean),
  Petal = tapply(iris$Petal.Length, iris$Species,mean)
)
group_means

#Clustered bar chart
barplot(
  group_means,
  beside = FALSE,
  col = c("darkblue","maroon"),
  legend.text = TRUE,
  main = "Clustered barchart"
)

barplot(
  group_means,
  beside = TRUE,
  col = c("darkblue","maroon"),
  legend.text = TRUE,
  main = "Stacked barchart"
)
