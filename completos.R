completos <- function(directorio, id = 1:332){
    #setwd(directorio)
    nobs <- vector("numeric", length(id))
    k<-1
    for (i in id){
        id2<-formatC(i,width = 3 ,flag = "0")
        readen <- read.csv(paste(id2, ".csv",sep=""), header=T)
        x <- (readen$sulfate)
        y <- (readen$nitrate)
        mydata <- data.frame(x, y)
        nobs[k] <- nrow(mydata[complete.cases(mydata),])
        k<-k+1
    }
    data.frame(id=id,nobs=nobs)
}
completos("specdata",id=30:25)