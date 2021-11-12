# Crear data frames a partir de vectores
nombres <- c("Rubén", "Paty", "Lucy",
             "Carlos", "Lalo", "Diana", 
             "Alejandro", "Cristian", "Regina", "Omar",
             "Erick", "Alexis", "Irvin", 
             "Rogelio", "Ximena", "Imelda", "Ernesto", 
             "Gabriel", "Jorge", "Antonio")
edades <- c(51, 45, 34, 
            19, 21, 22, 
            23, 20, 34, 19, 20, 22, 23, 
            43, 26, 32, 29, 32, 21, 19)
zonas <- c("SUR", "NORTE", "CENTRO", "CENTRO", "SUR",
           "SUR", "NORTE", "CENTRO", "SUR", "NORTE",
           "NORTE", "SUR", "CENTRO",
           "SUR", "NORTE", "CENTRO", "SUR", 
           "NORTE", "SUR", "SUR")

# Construir un data.frame
personas <- data.frame(nombres, edades, zonas)
personas

# Como acceder a observaciones o registros de un DF

personas[1,1] # Registro 1 columna
personas [c(2,4,6), 1]
personas[1:5,] # Los primeros cincos y todas las columnas

personas[,'nombres']
personas[,c('nombres', 'edades')]

# Otra manera por medio de filtros
# La función subset() permite filtrar
# filtrar significa una condición para extraer algunos registros
subset(personas, edades == 20) # EXPRESION = CONDICION
subset(personas, edades >= 25)
subset(personas, edades >=40 & edades <=50) # & and 
subset(personas, edades > 20 & zonas == 'SUR')
subset(personas, zonas == 'SUR' | zonas == 'NORTE') # | Operador OR

subset(personas, edades <= 25 & 
         (zonas == 'SUR' | zonas == 'NORTE')) # | Operador OR y & AND







