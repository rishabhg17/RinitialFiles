

## ---------- -2 -- -1 --- 0  --- 1 ---- 2

rm(answer)
x <- rnorm(1)
if (x>1){
  answer<- "number is greater than 1"
}else if (x>-1){
    answer<- "number lies between -1 ad 1"
}else {answer<- "number is less than -1"}
