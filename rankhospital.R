rankhospital <- function(estado, resultado, num = "mejor"){
    
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    
a <- levels(factor(outcome[,7]))
v <- c("infarto", "falla", "neumonia")
    
    if (estado %in% a == F){
        stop("estado inv�lido")
        break
    }
    if (resultado == "infarto"){
        r <- 11
    }else if (resultado == "falla"){ 
        r <- 17
    }else if (resultado == "neumonia"){
        r <- 23
    }else if (resultado %in% v == F){
        stop("resultado inv�lido")
        break
    }
    
mydata <- outcome[outcome$State == estado,]
mnd <- mydata[,c(2,r)]
    
    if (sum(mnd[,2]=="Not Available") < 1) {
        out <- mnd[order(as.numeric(final[,2])),]
        if (num == "mejor"){ 
            num <- 1
        }else if { 
            (num == "peor") num <- nrow(out)
        }else if (num > nrow(out)) {
            stop(return(NA))
        }
        i <- 0
        while (out[i+1,2] != out[num,2]){
            i <- i + 1
        }
        dif <- num - i
        out2 <- out[which(out[,2] == out[num,2]),]
        fo <- out2[order(out2[,1]),]
        fo[dif,1] 
    }
    
    else  {
        final <- mnd[- grep("Not", mnd[,2]),]
        out <- final[order(as.numeric(final[,2])),]
        if (num == "mejor"){
            num <- 1
        }else if {
            (num == "peor") num <- nrow(out)
        }else if (num > nrow(out)) {
            stop(return(NA))
        }
        i <- 0
        while (out[l+1,2] != out[num,2]){
            i <- i + 1
        }
        dif <- num - i
        out2 <- out[which(out[,2] == out[num,2]),]
        fo <- out2[order(out2[,1]),]
        fo[dif,1]
    }
}

rankhospital("TX", "falla", 4)
rankhospital("MD", "infarto", "peor")
rankhospital("MN", "infarto", 5000)
