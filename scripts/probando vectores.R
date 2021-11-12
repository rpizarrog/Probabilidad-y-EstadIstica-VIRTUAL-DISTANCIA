# Programa de probando vectores 
# c(elemento1, elemento2, ... elementos)
# función para unir o declarar elementos en un vector
nombres <- c("Rubén", "Paty", "Lucy",
             "Carlos", "Lalo", "Diana", 
             "Alejandro", "Cristian", "Regina")
nombres

edades <- c(51, 45, 34, 
            19, 21, 22, 
            23, 20, 34)
edades

zonas <- c("SUR", "NORTE", "CENTRO", "CENTRO", "SUR",
          "SUR", "NORTE", "CENTRO", "SUR")
zonas

# Acceder a los elementos de un vector
nombres[1]
nombres[5]

nombres[-4]

edades[7]

zonas[c(1,3,5,7)]

nombres[c(2,4,6,8)]


             