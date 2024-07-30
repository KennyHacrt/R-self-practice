set.seed(1)

flip=function(){
  key=1
  times=0
  while (key){
    times=times+1
    if (rbinom(1,1,1/2)==1){
      times=times+1
      if (rbinom(1,1,1/2)==1){
          key=key-1
      }
    }
  }
  return (times)
}
b=10000
a=c(1:100)
for (i in 1:b){
  a[i]=flip()
}


a=sum(a)
a=a/b
a
