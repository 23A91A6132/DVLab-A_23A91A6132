
#Load Air Passeners Dataset
data(AirPassengers)

#Convert dataset to dataframe
ap_df <- data.frame(
  year <- time(AirPassengers),
  passengers = as.numeric(AirPassengers)
)
ap_df

#using GGPLOT2 
library(ggplot2)
#A basic grid withx and y axes
ggplot(ap_df,
       aes(x=year,y=passengers))+
  geom_line(color='red',linewidth = 0.5)+
  labs(
    title='Trend Analysis of Air passengers',
    subtitle = 'For 1949-1960',
    caption = 'Using Built-in Air Passengers Dataset',
    x='Months',
    y='no.of passengers'
  )+
  geom_point(color='blue',size=0.5)+
  geom_smooth(color='darkblue')+
  theme_minimal()+
  theme(
    plot.title = element_text(face="bold",size=14),
    plot.subtitle = element_text(size=10)
  )
