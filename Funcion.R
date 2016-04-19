Practica <- function(m=1000,n=1000,fn=runif){
    hist(sapply(lapply(rep(m,n),fn),mean))
}

Practica(1000,1000,rexp)