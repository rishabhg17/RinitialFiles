#named Vectors
charlie<- 1:5
charlie

#naming by using names function
names(charlie)<- c("a","b","c","d","e")
names(charlie)
charlie
charlie["d"]

#clearnames
names(charlie)<- NULL
charlie


#naming a matrix
temp.vec <- rep(c("a","b","zZ"),each=3)
temp.vec

bravo<- matrix(temp.vec,3,3)
bravo

rownames(bravo)<- c("how","are","you")
bravo

colnames(bravo)<- c("X","Y","Z")
bravo

bravo["are","Y"]<- 0
bravo
