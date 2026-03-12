#Load and understand the "mtcars" Dataset
#Load Dataset
data(mtcars)
#Inspect structure
str(mtcars)
#View firstfew rows
head(mtcars)
#Basic Heat Map(Base R)
heatmap(as.matrix(mtcars))
#Improved Heat Map with Labels
heatmap(as.matrix(mtcars), main="Heatmap of mtcars Dataset")
#Heatmap with Custom colors
colors<-colorRampPalette(c("blue", "yellow", "red"))(50)
heatmap(as.matrix(mtcars),col=colors, main="Custom Color Heatmap")
#Correlation Heat Map (Base R)

corr_matrix<-cor(mtcars)
heatmap(corr_matrix, col=colorRampPalette(c("blue", "white", "red"))(50),
        main="Correlation Heatmapof mtcras")
#ggplot2 HeatMap (Basic)
library(reshape2)
mtcars$Car<-rownames(mtcars)
mtcars_long<-melt(mtcars,id.vars="Car")
#ggplot2 Heat Map(Basic)
library(reshape2)
mtcars$Car<-rownames(mtcars)
mtcars_long<-melt(mtcars,id.vars="Car")
View(mtcars_long)
library(ggplot2)
ggplot(mtcars_long,aes(x=variable, y=Car, fill=value))+
  geom_tile()
#Styled ggplot Heat Map
ggplot(mtcars_long,aes(x=variable,y=Car,fill=value))+
  geom_tile()+
  scale_fill_gradient(low="white",high="red")+
  theme_minimal()+
  labs(title="Heatmap of mtcars Dataset")
#Another Way
ggplot(mtcars_long.aes(variable,Car,fill=value))+
  geom_tile()+
  scale_fill_viridis_c()+
  theme_minimal()

corr_matrix<-cor(mtcars[,sapply(mtcars,is.numeric)])
corr_long<-melt(corr_matrix)
ggplot(corr_long,aes(x=Var1,y=Var2,fill=value))+
  geom_tile()+
  scale_fill_gradient2(low = "blue",mid = "white",high = "red",midpoint = 0)+
  theme_classic()+
  labs(title = "correlation heatmap of mtcars")
#heatmap with values displayed
ggplot(corr_long,aes(x=Var1,y=Var2,fill=value))+
  geom_tile()+
  geom_text(aes(label = round(value,2)))+
  scale_fill_gradient2(low = "blue",mid = "white",high = "red",midpoint = 0)+
  theme_minimal()
install.packages("pheatmap")
library(pheatmap)
pheatmap(
  cor(mtcars[,sapply(mtcars,is.numeric)]),
  display_numbers = round(corr_matrix,2),
  main = "Advanced correlation heatmap"
)
