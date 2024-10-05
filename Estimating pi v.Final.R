set.seed(28)
mm=c(-1,1)
s_num=1000
x=runif(s_num,-1,1)
y=runif(s_num,-1,1)
d_num=seq(1,s_num)
inside=0
for (i in d_num){
  distance=sqrt((x[i]-0)**2+(y[i]-0)**2)
  if (distance<=1){
    inside=inside+1
  }
}
pi=4*inside/(s_num)
print(pi)
