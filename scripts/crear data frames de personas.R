# Crear data.frames en R
nombres <- c("Rubén", "Paty", "Lucy",
             "Carlos", "Lalo", "Diana", 
             "Alejandro", "Cristian", "Regina", "Omar")
edades <- c(51, 45, 34, 
            19, 21, 22, 
            23, 20, 34, 19)
zonas <- c("SUR", "NORTE", "CENTRO", "CENTRO", "SUR",
           "SUR", "NORTE", "CENTRO", "SUR", "NORTE")


# data.frame es una función que permite crear un marco de datos 
# = matriz de datos
personas <- data.frame(nombres, edades, zonas)
personas




