#APPT
#Semana 10
#10/10/22

shapiro.test(paraje$EDAD)
shapiro.test(paraje$DAP)

#Homogeniedad de varianzas barlett.test

bartlett.test(paraje$DAP, paraje$Paraje)
hist(paraje$DAP)


shapiro.test(paraje$DAP)
hist(paraje$DAP)

library(dplyr)

chinatu <- paraje %>%
  filter(paraje == "Chinatu")

Trinidad <- paraje %>%
  filter(paraje == "Trinidad")




par.aov <- aov(paraje$DAP ~ paraje$Paraje)
summary(par.aov)

TukeyHSD(par.aov)  

#cuando pasa por el 0 no hay diferencias significativas 
#cuando no se toca el 0 es que si hay diferencias significativas 
#letras iguales no hay diferencia
#letras diferenets hay diferencia 

plot(TukeyHSD(par.aov))








