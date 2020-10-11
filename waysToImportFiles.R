
#Method 1: select the file manually
stats <- read.csv(file.choose())
stats

#Method 2: set WD and Read Data
getwd()
setwd("C:\\Users\\91971\\Downloads")
rm(stats)
stats<- read.csv("P2-Demographic-Data.csv")
stats

#---------- exploring data
stats
nrow(stats)
ncol(stats)
head(stats)
tail(stats)
str(stats)
summary(stats)

#-------- using the $ sign
stats
head(stats)
stats[3,3]
stats[3,"Birth.rate"]
stats$Internet.users
stats$Internet.users[2]
levels(stats$Income.Group)


#basic operations with a data frame
stats[1:10,]
stats[3:9,]
stats[c(4,100),]
is.data.frame(stats[1,]) #no need for Drop
is.data.frame(stats[,1,drop=F])

#multiply columns
head(stats)
stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users

#add column 
head(stats)
stats$MyCalc <- stats$Birth.rate * stats$Internet.users

#test of knowledge
stats$xyz<- 1:5
head(stats,n=12)

#deleting a column
head(stats)
stats$xyz<- NULL
stats$MyCalc<- NULL

#--------- Filtering Data Frames
head(stats)
filter<-stats$Internet.users<2
stats[filter,]
#we can also do it directly like
stats[stats$Birth.rate>40,]
stats[stats$Birth.rate>40 & stats$Internet.users<2,]
stats[stats$Income.Group=="High income",]

#-----------introduction to q plot
install.packages("ggplot2")
library(ggplot2)
?qplot

qplot(data=stats,x=Internet.users)
qplot(data=stats,x=Income.Group, y=Birth.rate)
qplot(data=stats,x=Income.Group, y=Birth.rate, size=I(10))
qplot(data=stats,x=Income.Group, y=Birth.rate, size=I(10),colour=I("blue"))
qplot(data=stats,x=Income.Group, y=Birth.rate, geom="boxplot")

#----------- visualising what we need
qplot(data=stats,x=Internet.users, y=Birth.rate)
qplot(data=stats,x=Internet.users, y=Birth.rate,colour=I("red"), size=I(4))
qplot(data=stats,x=Internet.users, y=Birth.rate,colour=Income.Group, size=I(4))

#------------ Creating data frames
mydf<- data.frame(Countries_2012_Dataset, Codes_2012_Dataset, Regions_2012_Dataset)
head(mydf)
colnames(mydf)<- c("countries","codes","regions")
qplot(data=mydf, x=countries,y=codes,colour=regions)

#------------- Merging data frames
head(stats)
head(mydf)

mergeddf <- merge(stats,mydf, by.x="Country.Code",by.y="codes")
mergeddf
head(mergeddf)
mergeddf$countries<-NULL


#visualising with new split

qplot(data=mergeddf,x=Internet.users, y=Birth.rate,colour=regions)

#1.shapes

qplot(data=mergeddf,x=Internet.users, y=Birth.rate,colour=regions, size=I(4),shape=I(19))

#2. transparency
qplot(data=mergeddf,x=Internet.users, y=Birth.rate,colour=regions, size=I(4),shape=I(19), alpha=I(0.6))

# 3. Title
qplot(data=mergeddf,x=Internet.users, y=Birth.rate,colour=regions, size=I(4),shape=I(19), alpha=I(0.6), main="birth rate vs Internet User")

