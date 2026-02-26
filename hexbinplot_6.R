data(diamonds)
#checking all packages
data(package=.packages(all.available = TRUE))
#diamond package -- library ggplot2 loading
library(ggplot2)
data(diamonds)
str(diamonds)
dim(diamonds)
?diamonds
#very basic scatter
plot(diamonds$carat,diamonds$price)
#improved scatter
plot(diamonds$carat,diamonds$price,col=rgb(0,0,1,0.1),pch=16,
     main = "Scatter Plot:Carat vs Price")
#hexbin using base a
install.packages('hexbin')
library(hexbin)
hb<-hexbin(diamonds$carat,diamonds$price,xbins = 40)
plot(hb,main="Hexbin Plot")
#basic hexbin
ggplot(diamonds,aes(x=carat,y=price))+
  geom_hex()
#labeled hexbin plot
ggplot(diamonds,aes(carat,price))+
  geom_hex()+
  labs(title = "Hexagon Binning:Diamond Structure",x="Carat",y="Price")+
  theme_gray()
#control hexagon density
ggplot(diamonds,aes(carat,price))+geom_hex(bins=10)+theme_minimal()
#add color palette(gradient)
ggplot(diamonds,aes(carat,price))+
  geom_hex(bins=10)+
  scale_fill_gradient(low = "white",high = "maroon")+
  theme_dark()
#color meaing---light->fewer ,dark->dense region
#professional palette(viridis)
ggplot(diamonds,aes(carat,price))+geom_hex(bins=35)+scale_fill_viridis_c()+theme_dark()
#professional palette(viridis)
ggplot(diamonds,aes(carat,price))+geom_hex(bins=35)+scale_fill_viridis_c()+theme_light()
#add legend title
ggplot(diamonds,aes(carat,price))+geom_hex(bins=20)+
  scale_fill_viridis_c(name="Count")+
  labs(title = "Density Structure of Diamonds",x="Carat",y="Price")+
  theme_minimal()
#faceted hexbin
ggplot(diamonds,aes(carat,price))+geom_hex()+scale_fill_viridis_c()+
  facet_wrap(~cut)+
  theme()

