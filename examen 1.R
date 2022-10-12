#APPT
#12/10/22
#Examen 1

library(repmis)

suelo <- read.csv("CLASES/examendatosnuevos.csv")
View(suelo)

boxplot(suelo$nem ~ suelo$suelo,
        xlab = "Tipos de suelo",
        ylab = "Numero de nematodos",
        col = "blue")


tapply(suelo$nem, suelo$suelo, var)
tapply(suelo$nem, suelo$suelo, mean)
#S1    S2    S3    S4    S5 
#571.7 302.7 285.8 189.3  90.8
#Cuántas veces es la diferencia entre la varianza más pequeña y la más grande?
571.7/90.8
#6.296256


#Cuáles serían las hipótesis nula y alternativa?
par.aov <- aov(suelo$nem ~ suelo$suelo)
summary(par.aov)
#Ho= No hay diferencias significativas
#H1= Si hay diferencias significativas 

#Describe los resultados obtenidos indicando cuál es el valor del estadístico de contraste (F), los gradosde libertad del factor, los grados de libertad residuales y el valor de P.
#Contraste F= 0.000207
#Grados de libertad del factor= 4
#Grados de libertad residuales= 20
#Valor de p= 9.287



#Si existen diferencias significativas, realiza una prueba de Tukey e indica donde existen diferenciassignificativas.
TukeyHSD(par.aov)
plot(TukeyHSD(par.aov))

#S2-S1  -8.0 -40.1208794  24.120879 0.9429980- no hay diferencias signficativas
#S3-S1 -18.4 -50.5208794  13.720879 0.4481002- no hay diferencias significativas
#S4-S1 -48.4 -80.5208794 -16.279121 0.0017871- si hay diferencias significativas 
#S5-S1  12.8 -19.3208794  44.920879 0.7555248- no hay diferencias significativas
#S3-S2 -10.4 -42.5208794  21.720879 0.8658492- no hay diferencias significativas
#S4-S2 -40.4 -72.5208794  -8.279121 0.0095500- si hay diferencias significativas
#S5-S2  20.8 -11.3208794  52.920879 0.3307073- no hay diferencias significativas
#S4-S3 -30.0 -62.1208794   2.120879 0.0743745- no hay diferencias significativas
#S5-S3  31.2  -0.9208794  63.320879 0.0595156- no hay diferencias significativas
#S5-S4  61.2  29.0791206  93.320879 0.0001237- si hay diferencias significativas 



#Conclusion
#Algunas de las variables tienen una diferencia significativa. Sin embargo son muy pocas, la mayoria no tiene una diferencia muy grande 
