outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
head(outcome)
ncol(outcome)
names(outcome)
outcome[,11] <- as.numeric(outcome[,11])
## You may get a warning about NAs being introduced; that is okay 
hist(outcome[,11])

mejor <- function(estado, resultado) {
    outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    h <- vector("numeric")
    d <- vector("numeric")
    l <- nrow(outcome)
    
    if (resultado == "ataque") {
        r <- 11
    } else if (resultado == "falla") {
        r <- 17
    } else if (resultado == "neumonía") {
        r <- 23
    } else {
        r <- 2
    }
    
    if (r>10) {
        h1 <- 0
        for (j in 1:l) {
            if (outcome[j,7] == estado) {
                h1 <- length(h) + 1
                length(h) <- h1
                length(d) <- h1
                h[h1] <- outcome[j,2]
                d[h1] <- outcome[j,c]
            }
        }
        
        if (h1>0) {
            oldw <- getOption("warn")
            options(warn = -1)
            v <- as(d,"numeric")
            options(warn = oldw)
            x <- data.frame(h,v,stringsAsFactors = FALSE)
            y <- x[order(v,h),]
            y[1,1]
        } else {
            "ESTADO INVALIDO"
        }
    } else {
        "RESULTADO INVALIDO"
    }
}

mejor("TX", "falla")