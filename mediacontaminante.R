mediacontaminante <- function(directorio, contaminante, id = 1:332){
    suma <- numeric()
    for (i in id){
        
        id2 <- formatC(i,width = 3 ,flag = "0")
        readen <- read.csv(paste(id2, ".csv",sep=""),header = T)
        
        if (contaminante == "sulfate"){
            
            #suma <- c(suma,readen[[sulfate]])
            suma <- c(suma,readen$sulfate)
        } else if (contaminante == "nitrate"){
            
            #suma <- c(suma,readen[[nitrate]])
            suma <- c(suma,readen$nitrate)
        } else {
            paste("El contaminante",contaminante,"no existe.")
        } 
        
    }
    promedio <- mean(suma, na.rm = T)
    promedio
}
mediacontaminante("specdata","sulfate",1:10)
mediacontaminante("specdata","nitrate",70:72)
mediacontaminante("specdata","nitrate",23)