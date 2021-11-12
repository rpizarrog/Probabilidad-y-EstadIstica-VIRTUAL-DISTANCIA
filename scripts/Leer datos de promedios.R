
# Leer promedios del archivo promedios.csv y determinar una muestra con 
# la función sample()
# con la muestra determinar la media de promedios

poblacion.alumnos <- read.csv("https://raw.githubusercontent.com/rpizarrog/datos/main/promedios.csv")
poblacion.alumnos

# Renombrar las variables
str(poblacion.alumnos)
colnames(poblacion.alumnos) <- c("no", "promedios") # Renombrar columnas o variables

# La variable de interés es promedios

# ¿Quien es la pobñación ?. Todos los alumnos de una institución 
# ¿Cuáles variables se tienen y de que tipo?. 
# La variable de 'no' que es un valor consecutivo y 
# la variable promedios que es la variable de 
# interés de tipo numérico
# ¿Cuántas observaciones hay?
N <- nrow(poblacion.alumnos) # Cuántas observaciones

# ¿Que sería una muestra?. 
# Sería una parte representativa y aleatoria de una población
# ¿Como determinar una muestra?
# Se utiliza la función sample()
# promedios$promedios significa la variable específica 
# del conjunto de datos promedios

# alumnos <- sample(x = promedios$promedios, size = 350, 
                  replace = FALSE)
# alumnos

cuales <- sample(x = 1:N, 350, replace = FALSE)
cuales

muestra.alumnos <- poblacion.alumnos[cuales, ] # Las dos columnas
muestra.alumnos

# Saca la media de promedios de la población promedios

mean(poblacion.alumnos$promedios)

# Media de la muestra alumnos de la variable de interés
mean(muestra.alumnos$promedios)

  
# AQUI TERMINAMOS



