
# Load & Understand the iris Dataset

data(iris)
str(iris)
View(iris)

# Basic Scatter Plot: Sepal Length vs Sepal Width
plot(iris$Sepal.Length, iris$Sepal.Width)

# Labeled Scatter Plot
plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  main = "Sepal Length vs Sepal Width",
  xlab = "Sepal Length (cm)",
  ylab = "Sepal Width (cm)",
  col = 'yellow',
  pch = 16
)
plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  col = as.numeric(iris$Species),
  pch = 16,
  main = "Sepal Dimensions by Species"
)
