#APPT
#17/11/22
#Examen 2

data(InsectSprays)
head(InsectSprays)

#Ejercicio 1 ______________________________________________________________________________________________________

#1.- ¿Cuántos tipos de insecticida tiene el exprimento?
  #R= Tiene 6 tipos

#2.- ¿Cuántas observaciones tiene cada tipo de insecticida?
  #R= Tiene 12 observaciones por muestra

#3.- ¿Cuántos datos (n) tiene el experimento?
  #R= Muestra que hay 2 variables, 6 tipos de insecticidas, 12 observaciones por muestra y el total seria 72 observaciones 


boxplot(InsectSprays$count ~ InsectSprays$spray,
        xlab = "Tipo de Insecticida",
        ylab = "Conteo",
        col = "lightpink")

#Ejercicio 2 ___________________________________________________________________________________________________________

#4.-¿Qué sugiere la gráfica sobre la relación entre el conteo de insectos y el insecticida usado?
#R= El tipo de insecticida que e usó y el numero de animales muertos que se encontraron muertos 

#5.- ¿Crees que hay diferencias entre los sprays? Si es así
#R= Si

#6.- ¿Dónde crees que están las diferencias?
#R=Se puede ver que algunos tipos mataron mas insectos que otros, esto se puede confirmar con el conteo

#7.- ¿Cuáles insecticidas presentan outliers?
#R= Los C y D

#8.- ¿Cuál insecticida parece ser el más efectivo?
#R= El F



#Aplique la funcióntapplypara determinar lo siguiente

library(repmis)

tapply(InsectSprays$count, InsectSprays$spray, mean)
tapply(InsectSprays$count, InsectSprays$spray, var)


#9.- ¿Cuál es las media de cada insecticida?
  #R= A= 14.500000 
  #B= 15.333333 
  #C= 2.083333 
  #D= 4.916667 
  #E= 3.500000 
  #F= 16.666667

#10.- ¿Cuál es la varianza de cada insectida?
   # R= A         B         C         D         E         F 
  #22.272727 18.242424  3.901515  6.265152  3.000000 38.606061
  
#11.- ¿Cuál insecticida presenta mayor variación?
    #R= El F

#12.- ¿Cuál insecticida presenta menor variación?
    #R= El E



#Realiza una prueba de ANOVA para comparar las medias de los insecticidas.

aov(InsectSprays$count ~ InsectSprays$spray)
nm.aov <- aov(InsectSprays$count ~ InsectSprays$spray)
summary(nm.aov)

#13.- Establezca la hipótesis nula y alternativa
  #R= H0= No hay diferencias entre las varianzas
  #H1= Hay diferencias entre las varianzas
  
#14.- ¿Cuántos grados de libertad tiene el tratamiento?
    #R= Son 5 grados de libertad
  
#15.- ¿Cuántos grados de libertad tiene el error o residual?
    #R= Son 66 
  
#16.- ¿Cuántos son los grados de libertad totales?
    #R= Son 71
  
#17.- ¿Cuál es la suma de cuadrados del tratamiento?
    #R=2669
  
#18.- ¿Cuál es el Valor de F?
    #R= 34.7
  
#19.- ¿Cuál es el valor de la probabilidad de F?
    #R= <2e-16
  
#20.- Existen diferencias significativas entre los insecticidas, si es así
  #R= Si, las hay
  
#21.- ¿Qué prueba estadística aplicamos para detectar las diferencias significativas?
  #R= La prueba de Tukey




#Ejercicio 3 ________________________________________________________________________________________________________

TukeyHSD(nm.aov)
plot(TukeyHSD(nm.aov))

#22.- ¿Cuántas comparaciones arroja la comparación del análisis de varianza?
  #R= Son 15 comparaciones

#23.- Subraya las comparaciones y su valor de p donde si existen diferencias significativas
#R=C-A
#D-A
#E-A
#C-B
#D-B
#E-B
#F-C
#F-D
#F-E
  
#24.- Encierra las comparaciones donde no existen diferencias significativas y su valor de p
#R= B-A
# F-A
# F-B
# D-C
# E-D
# E-C


#25.- ¿Cuál insecticida presenta la mejor efectividad?
#R= Parece que es el E


















