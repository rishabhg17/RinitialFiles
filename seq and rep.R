
MyFirstVector <- c(3, 45, 56, 732)
MyFirstVector
is.numeric(MyFirstVector)
is.integer(MyFirstVector)
is.double(MyFirstVector)

v <- c(3L, 13L, 243L, 0L)
v
is.numeric(v)
is.integer(v)
is.double(v)

V3 <- c("a", "abc", "hello")
V3
is.character(V3)
is.numeric(V3)

seq()  #seq like ':'
rep()  #REPLICATE

seq(1,15)
1:15

z <-seq(1,15,2)
z
z1 <- seq(1,15,4)
z1

rep(3,50)
rep("a",10)
x<- c(10,20)
rep(x,10)
