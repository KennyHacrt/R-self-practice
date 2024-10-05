set.seed(10)
Demand=c(10000,20000,40000,60000)
probability=c(0.1,0.35,0.3,0.25)
sum(sample(Demand,100,replace=TRUE,prob=probability))









