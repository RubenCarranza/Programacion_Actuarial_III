#1  Une los datos de test con los de training, para crear un solo conjunto de 
#   datos

setwd("~/Actuarios/Ignacio Trujillo/test-repo/UCI HAR Dataset")    
g<-getwd()
training_set <- read.table(paste(g,"train/X_train.txt",sep = "/"),quote ="\"")
test_set <- read.table(paste(g,"test/X_test.txt",sep = "/"),quote ="\"")
data_set <- rbind(training_set,test_set) 

rm(test_set,training_set)



features_name <- read.table(paste(g,"features.txt",sep = "/"),quote ="\"")[,2]
colnames(data_set) <- features_name
Medidas_Seleccionadas <- grepl('-(mean|std)\\(',features_name) 
data_set <- subset(data_set,select=Medidas_Seleccionadas) 




colnames(data_set) <- gsub("mean", "Mean", colnames(data_set))
colnames(data_set) <- gsub("std", "Std", colnames(data_set))
colnames(data_set) <- gsub("t", "Time", colnames(data_set))
colnames(data_set) <- gsub("f", "Frequency", colnames(data_set))
colnames(data_set) <- gsub("\\(\\)", "", colnames(data_set))
colnames(data_set) <- gsub("-", "", colnames(data_set))
colnames(data_set) <- gsub("BodyBody", "Body", colnames(data_set))
colnames(data_set) <- gsub("^", "MeanOf", colnames(data_set))
colnames(data_set)


