library(tidyverse)

set.seed(20)

day=c(1:366)
aa=rnorm(365,1.001,0.005)
a=cumprod(c(30,aa))
data=data.frame(day,a)
ggplot(data)+
  geom_line(mapping=aes(x=day,y=a))+
  geom_smooth(mapping=aes(x=day,y=a))+
  labs(title="stock price prediction over 365 days"
      ,x="Day",
      y="Price")
