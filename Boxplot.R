
#Load the data
data(iris)
#understand the data
str(iris)
View(iris)
class(iris)
?iris
#basic box plot
boxplot(iris$Sepal.Length)
#add title & lables
boxplot(iris$Sepal.Length,
        main="Box plot for Sepaal Length",
        ylab="Sepal_Length",
        col='maroon')
boxplot(Sepal.Length~Species,
        data=iris,
        main="Sepal Length by species",
        xlab = "Species",
        ylab="Sepal Length",
        col=c('black','darkgreen','darkblue'))
boxplot(iris[,1:4],
        main="Multi Variable Box plot",
        col=c('black','darkgreen','darkblue','maroon'))
#using custom color palette
species_colors<-c("satosa"='pink',
                  "versicolor"='lavender',
                  "virginica"='yellow')
