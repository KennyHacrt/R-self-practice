# set.seed(10)
customers=c(1:100)
servicetime=(rnorm(100,0.9,0.25))
arrivetime=cumsum(c(1,rexp(99,1)))
leavetime=0.0
waittime=0.0
waittimeA=array(0,100)


library(tidyverse)

for (i in 1:100){
  waittimeA[i]=max(0,leavetime-arrivetime[i])
  leavetime=arrivetime[i]+waittimeA[i]+servicetime[i]
  
}

data=data_frame(customers,waittimeA)
ggplot(data)+
  geom_point(mapping=aes(x=customers,y=waittimeA))+
  labs(title="waiting for atm"
      ,x="customer",
      y="waiting time")
