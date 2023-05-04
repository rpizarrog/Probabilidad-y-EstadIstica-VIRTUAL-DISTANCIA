# Vectores
# c() crea vectores
x <- c(20, 24, 25, 30, 45, 65, 76)
x

edades <- c(18, 20, 21, 23, 24, 23, 22, 23, 19, 18, 19, 20, 21, 23)
edades

edades[1]
edades[2:5]
edades[5:9]



nombres <- c("ALEJANDRO", "RUBEN", "PATY", "OSCAR", "LUCY", "JAVIER", "HECTOR", "ADRIANA",
             "GABRIEL", "PATY", "JAVIER", "ERNESTO", "SANDRA", "JOSE")

nombres


nombres[1]
nombres[4:5]
nombres[6:8]



# Data.Frames = Marco de datos = Conjunto de datos = 
# tabla de renglones y columnas
# renglones son registros
# columnas son variables
# Similar a una hoja de cálculo

personas <- data.frame(nombres, edades)
personas







