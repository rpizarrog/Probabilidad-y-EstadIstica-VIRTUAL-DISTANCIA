# Determinar frecuencia de nombres

nombres <- read.csv("https://raw.githubusercontent.com/rpizarrog/datos/main/nombres%20y%20apellidos.csv",
                    encoding = "UTF-8")
nombres


# Para determinar una frecuencia
# con la función table() cuenta los valores y data.frame
# convierte a conjunto de datos data.frame

# Variable de interés es nombre 
# del conjunto de datos nombres
# nombre$nombre accede a la variable de interés

frecuencias <- data.frame(table(nombres$nombre))
frecuencias 

frecuencias.ordenada <- frecuencias[order(frecuencias$Freq, decreasing = TRUE),]
frecuencias.ordenada

head(frecuencias.ordenada, 10)


barplot(height = head(frecuencias.ordenada$Freq, 10)
, names.arg = head(frecuencias.ordenada$Var1, 10))