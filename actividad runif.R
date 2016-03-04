x <- runif(1,0,100)
if (x<=30){
    y="Hola"
} else if (x>30 && x<=50){
    y="Que onda"
} else if (x>50 && x<=60){
    y="Que pedo wey"
} else if (x>60 && x<=80){
    y="Que pex"
} else if (x>80 && x<=100){
    y="quihubo"
}
y

# Ejercicio If nacho
x <- runif(1)
if(x<=0.3){
    print("Hola")
} else if (x<=0.5){
    print("¿Que onda?")
} else if (x<=0.7){
    print("Quiubo")
} else if (x<=0.9){
    print("Que pex")
} else {
    print("Que pedo wey")
}  



# Ejemplo For
for(i in 10:1){
    print(i)
}

x <- matrix(1:6,2,3,T)
x
for(i in seq_len(nrow(x))){
    for(j in seq_len(ncol(x))){
        print(x[i,j])
    }
}


# Prueba de funcionamiento
n <- 10000
mensajes <- vector("character",n)
for(i in 1:n){
    y <- runif(1)
    if(y<=0.30){
        mensajes[i]<-"Mensaje 30%"
    } else if (y<=0.50){
        mensajes[i]<-"Mensaje 20% a"
    } else if (y<= 0.7){
        mensajes[i]<-"Mensaje 20% b"
    } else if (y<=.9){
        mensajes[i]<-"Mensaje 20% c"
    } else{
        mensajes[i]<-"Mensaje 10%"
    } 
}
factor(mensajes)
table(mensajes)
plot(table(mensajes))



