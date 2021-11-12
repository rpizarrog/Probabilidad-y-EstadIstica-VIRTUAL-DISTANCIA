# Reglas para clases

# Sturges
datos <- c(15, 38, 14, 13, 29, 25, 
           20, 13, 16, 32, 44, 39, 
           45, 46, 19, 23, 24, 18,
           19, 20, 21, 18, 25, 33,
           13, 18, 22, 24, 27, 27)
datos

sort(datos)

N <- length(datos)

k <- 1 + 3.322 * log10(N) # Número de clases

N
k
round(k)

h <- (max(datos) - min(datos)) / k # Intervalo de clase

round(h)


tabla.frecuencia <- fdt(x = datos, breaks = "Sturges")
tabla.frecuencia
