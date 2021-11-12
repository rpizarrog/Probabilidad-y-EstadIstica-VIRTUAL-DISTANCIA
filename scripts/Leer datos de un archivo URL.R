# Leer datos de una dirección UTL o WEB
# la función read.csv importa datos
# El parámetro encoding significa el tipo de 
# formato o codificación del archivo
personas <- read.csv("https://raw.githubusercontent.com/rpizarrog/datos/main/personas.csv", 
                      encoding = "UTF-8")

