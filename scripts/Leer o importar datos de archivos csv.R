# Leer datos de un archivo csv separado por comas
# La función read.csv permite leer o importar datos

# Tilde ~ significa con la función setwd() que 
# hay carpetas anteriores al directorio
# y a partir de ahí se busca el directorio y el archivo
setwd("~/Mis clases ITD/Semetre Agosto 2021-Enero 2022/trabajos en R")
datos.personas <- read.csv("datos/personas.csv")


# Leer datos de lista de alumnos de la clase
alumnos <- read.csv("datos/lista de alumnos.csv")