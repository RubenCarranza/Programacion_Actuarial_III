z <- 5
k <- 1
v <- vector("numeric",0)
while(z>=0 && z<=10){
    length(v) <- length(v)+1
    v[k] <-(z)
    moneda <- rbinom(1,1,0.5)
    if(moneda==1){
        z <- z+1
        v[k] <- z
    } else {
        z <- z-1
        v[k] <- z
    }
    k <- k + 1
    if(k==100000) break
}
v