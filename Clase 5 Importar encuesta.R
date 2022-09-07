#APPT
#07/09/22
#Importar encuesta

Entrevista <- read.csv("CLASES/Encuesta_codificada3.csv", header = T)
Entrevista$Entrev <- as.factor(Entrevista$Entrev)
Entrevista$oi_2a <- as.factor(Entrevista$oi_2a)
Entrevista$oi_4a <- as.factor(Entrevista$oi_4a)
View(Entrevista)

#Convertir variables a factores

Entrevista$Genero <- as.factor(Entrevista$Genero)
levels(Entrevista$Genero)
Entrevista$Carrera <- as.factor(Entrevista$Carrera) 
levels(Entrevista$Carrera)
Entrevista$Semestre <- as.factor(Entrevista$Semestre)
levels(Entrevista$Semestre)
Entrevista$Edad <- as.factor(Entrevista$Edad)
levels(Entrevista$Edad)
Entrevista$oi_2a <- as.factor(Entrevista$oi_2a)
levels(Entrevista$oi_2a)

#Funcion para transformar caracteres a fechas
library(lubridate)
Entrevista$Fecha <- as_date(Entrevista$Fecha)

#Cual fue el porcentaje de entrevistados por genero?
gen <- table(Entrevista$Genero)
round(gen/length(Entrevista$Genero)*100,1)
pie(round(gen/length(Entrevista$Genero)*100,1)
    
ent <- table(Entrevista$Entrev)
prop.table(ent)*100    
pie(prop.table(ent)*100)

#Cual es el porcentaje de alumnos entrevistados por carrera?

table(Entrevista$Carrera)
car <- table(Entrevista$Carrera)
prop.table(car)*100

