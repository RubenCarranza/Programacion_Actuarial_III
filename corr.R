corr <- function(directorio, horizonte=0){
    #setwd(directorio)
    correlacion <- vector("numeric",0)
    k <- 1
    for (i in 1:332){
        
        id2<-formatC(i,width = 3 ,flag = "0")
        readen <- read.csv(paste(id2, ".csv",sep=""),header = T)
        mydata <- data.frame(readen$sulfate,readen$nitrate)
        compl <- mydata[complete.cases(mydata),]
        n <- nrow(compl)
        
        if (n>horizonte){
            length(correlacion) <- length(correlacion)+1
            correlacion[k] <- cor(compl[,1],compl[,2])
            k <- k+1
        }
    }
    correlacion
}
cr <- corr("specdata", 150)
head(cr)