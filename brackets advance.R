x<- rnorm(5)
x

for (i in x){
  print(i)
}

x[1]
x[2]
x[3]
x[4]
x[5]

for (j in 1:5)
{
  print(x[j])
}



#..........................................

N<- 100
a<- rnorm(N)
b<- rnorm(N)

#vectorised approach
c<- a*b

#devectorised approach
d<- rep(NA, N)
for (i in 1:N){
  d[i]<- a[i]*b[i]
}




