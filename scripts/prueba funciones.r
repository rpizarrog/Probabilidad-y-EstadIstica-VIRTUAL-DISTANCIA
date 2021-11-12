# Funciones
print("Hola")
numeros <- c(3,4,5,6,5)
numeros

mean(numeros)
var(numeros)
sd(numeros)
summary(numeros)


# Es posible crear funciones personalizadas
mifuncion <- function(nombre) {
  paste("Hola saludos", "como estás?", nombre)
}


# Media geométrica
numeros <- c(1.20, 1.15, 1.33, 1.25)
numeros

n <- length(numeros)

multiplicacion <- numeros[1] * numeros[2] * numeros[3] * numeros[4]
multiplicacion
media_geometrica <- multiplicacion ^ (1/n)
media_geometrica


media_geom <- function (valores) {
  n <- length(valores)
  multiplicacion <- 1
  for (var in numeros) {
    # print(var)
    multiplicacion <- multiplicacion * var
  }
  multiplicacion
  media_geometrica <- multiplicacion ^ (1/n)
  media_geometrica
}

# Ciclos 
multiplicacion <- 1
for (var in numeros) {
  print(var)
  multiplicacion <- multiplicacion * var
}
multiplicacion


