
k <- 1
v <- vector("numeric",0)
caminata <- function(inicio=100,pasos=1000){
    z <- inicio
    for(i in 1:pasos){
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
    }
    plot(v,type="l")
}
