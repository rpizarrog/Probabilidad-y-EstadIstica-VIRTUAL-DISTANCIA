# MEDIDAS DE CENTRALIZACIÓN localización CON DATOS
set.seed(2021) # Semilla
edades <- sample(18:65, 51, replace = TRUE)
edades

# La variable edades es un vector de 50 posiciones
# Acceder a algunos elementos de variable edades
edades[10]
edades[5:10]
edades[50]

head(edades, 10) # los primeros diez
tail(edades) # los últimos seis


# MEDIDAS DE CETRALIZACIÓN
# MEDIA ARITMÉTiCA
# SUMAR TODOS Y DIVIDIR ENTRE n

n <- length(edades) # La cantidad de elementos del vector
n

# edades[1] + edades[2] + edades[3] + ... edades[50]
sum(edades) / n

# Usando la función mean()
media.edades <- mean(edades)
media.edades

# MEDIANA
# ORDENAR LOS DATOS
edades.ordenadas <- sort(edades, decreasing = FALSE)
edades.ordenadas

edades.ordenadas[25]
edades.ordenadas[25 + 1 ]

(edades.ordenadas[25] + edades.ordenadas[25 + 1 ]) / 2


# Mediana es el valor del elemento que está exactamente a la mitad
# de los valores ordenados
# Si n es par entonce promedio(n / 2 ) = 25; (n/2 + 1) = 26
edades.ordenadas[25] # Posición 25
edades.ordenadas[26] # Posición 26

sum(edades.ordenadas[25], edades.ordenadas[26]) / 2

# Si n es impar entonce (n+1) / 2 ; 51 + 1= 52/2 = 26

mediana.edades <- median(edades)
mediana.edades


# Cuartiles dividen en cuatro partes, con estas divisiones 0.25, 0.50, 0.75
edades.ordenadas
# Los cuartules sirven para interpretar cuántos datos estánór encima y debajo de
# La primer caurtil parte Primer cuartil
# La segunda cuarta parte segundo cuartil = mediana
# El tercer cuartil la tercer cularta parte
quantile(x = edades, probs = c(0.25, 0.50, 0.75), type = 7)
