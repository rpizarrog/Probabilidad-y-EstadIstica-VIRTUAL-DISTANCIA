# Crear un data frame a partir de 3 vectores 
# Vector llamado frutas
# Vector llamado colores
# Vector llamado sabores
frutas <- c("manzana", "durazno", "mango",
            "limon", "uva", "guayaba", 
            "naranja", "toronja")
colores <- c("roja", "amarillo", "amarillo",
             "verde", "morada", "amarillo",
             "naranja", "naranja")
sabores <- c ("dulce", "dulce", "dulce",
              "amargo", "amargo", "dulce",
              "dulce", "amargo")
tutifruti <-data.frame(
  # Crear un data frame a partir de 3 vectores 
  # Vector llamado frutas
  # Vector llamdo colores
  # Vector llamado sabores
  frutas <- c("manzana", "durazno", "mango",
              "limon", "uva", "guayaba", 
              "naranja", "toronja")
  colores <- c("roja", "amarillo", "amarillo",
               "verde", "morada", "amarillo",
               "naranja", "naranja")
  sabores <- c ("dulce", "dulce", "dulce",
                "amargo", "amargo", "dulce",
                "dulce", "amargo")
  
  tutifruti <-data.frame(frutas, colores, sabores)
  tutifruti
  
  #acceder a registros por pocision
  tutifruti[2,1]
  tutifruti [c(2,5), ]
  tutifruti [1:4, 1]
  
  #acceder a registros por filtros con la funcion 
  # subset()
  subset(tutifruti, sabores=="dulce")
  subset(tutifruti, colores=="amarillo")
  