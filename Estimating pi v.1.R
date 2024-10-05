mm=c(-1,1)
a=runif(1000000000,-1,1)
index=seq(1,99,4)
inside=0
outside=0
for (i in index){
  distance=sqrt((a[i]-a[i+2])**2+(a[i+1]-a[i+3])**2)
  if (distance<=1){
    inside=inside+1
  }
  else{
    outside=outside+1
  }
}
pi=4*inside/(outside+inside)
print(pi)
