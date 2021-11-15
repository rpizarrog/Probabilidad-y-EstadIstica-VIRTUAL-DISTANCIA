# Funciones para distribuciones de probabilidad
# Funciones preparadas para DISTRIBUCION UNIFORME
plotunif <- function(x, min = 0, max = 1, lwd = 1, col = 1, ...) {
  
  # Rejilla de valores del eje X
  if (missing(x)) {
    x <- seq(min - 0.5, max + 0.5, 0.01)
  }
  
  if(max < min) {
    stop("'min' debe ser menor que 'max'")
  }
  
  plot(x, dunif(x, min = min, max = max),
       xlim = c(min - 0.25, max + 0.25), type = "l",
       lty = 0, ylab = "f(x)", ...) 
  segments(min, 1/(max - min), max, 1/(max - min), col = col, lwd = lwd)
  segments(min - 2, 0, min, 0, lwd = lwd, col = col)
  segments(max, 0, max + 2, 0, lwd = lwd, col = col)
  points(min, 1/(max - min), pch = 19, col = col)
  points(max, 1/(max - min), pch = 19, col = col)
  segments(min, 0, min, 1/(max - min), lty = 2, col = col, lwd = lwd)
  segments(max, 0, max, 1/(max - min), lty = 2, col = col, lwd = lwd)
  points(0, min, pch = 21, col = col, bg = "white")
  points(max, min, pch = 21, col = col, bg = "white")
}

unif_area <- function(min = 0, max = 1, lb, ub, col = 1,
                      acolor = "lightgray", ...) {
  x <- seq(min - 0.25 * max, max + 0.25 * max, 0.001) 
  
  if (missing(lb)) {
    lb <- min(x)
  }
  if (missing(ub)) {
    ub <- max(x)
  }
  if(max < min) {
    stop("'min' debe ser menor que 'max'")
  }
  
  x2 <- seq(lb, ub, length = 1000) 
  plot(x, dunif(x, min = min, max = max),
       xlim = c(min - 0.25 * max, max + 0.25 * max), type = "l",
       ylab = "f(x)", lty = 0, ...)   
  
  y <- dunif(x2, min = min, max = max)
  polygon(c(lb, x2, ub), c(0, y, 0), col = acolor, lty = 0)
  segments(min, 1/(max - min), max, 1/(max - min), lwd = 2, col = col)
  segments(min - 2 * max, 0, min, 0, lwd = 2, col = col)
  segments(max, 0, max + 2 * max, 0, lwd = 2, col = col)
  points(min, 1/(max - min), pch = 19, col = col)
  points(max, 1/(max - min), pch = 19, col = col)
  segments(min, 0, min, 1/(max - min), lty = 2, col = col, lwd = 2)
  segments(max, 0, max, 1/(max - min), lty = 2, col = col, lwd = 2)
  points(0, min, pch = 21, col = col, bg = "white")
  points(max, min, pch = 21, col = col, bg = "white")
}

# funcion par distribuciones
# 27 Oct 2021 Actualizado

library(gtools)


# Función que devuelve la probabilidad conforme y de acuerdo a la 
# la fórmula de distribución binomial
# Recibe tres parámetros: 
# los valores de x, e valor de n y la probabilidad de éxito
# Devuelve las probabilidades para cada valor de la variable aleatoria discreta
f.prob.binom <- function (x,n,exito) {
  fracaso <- 1 - exito
  prob <- (factorial(n) / (factorial(x) * factorial(n-x)))  * ((exito^x) * (fracaso ^ (n-x)))
  prob
}


# Función de distribución de Poisson conforme a la Fórmula
f.prob.poisson <- function (media, x) {
  e <- exp(1)
  prob <- media^x * e^(-media) / factorial(x)
  prob
}

# Función de disrtibución hipergeométrica
# Recibe estos pa´rametros:
# N Total de elementos de la población
# n Elementos de la muestra o ensayos
# r número de elementos considerados como éxtio
# x Valores que puede tener la variabel aleatoria discreta
f.prob.hiper <- function (x, N, n, r) {
  numerador <- (factorial(r) / (factorial(x) * factorial(r-x))) * (factorial(N-r) / (factorial(n-x) * factorial((N-r)-(n-x)))) 
  denominador <- (factorial(N) / (factorial(n) * factorial(N-n)))
  
  prob <- numerador / denominador
  prob
}

# Función que devuelve el valor esperado de una distribución hipergeométrica
f.va.hiper <- function (n, r, N) {
  VE <- n * (r/N)
  VE
}

# Función que devuelve la varianza de una distribución hipergeométrica
f.varianza.hiper <- function(VE, n, r, N)  {
  varianza <- VE * (1 - r/N) * ((N-n) / (N-1))
  varianza
}

# Devuelve la densidad de la distribución T Student
f.t.student <- function(media.muestra, media.pob, desv.muestra, n) {
  dens <- (media.muestra - media.pob) / (desv.muestra / sqrt(n))
  dens
}

f.t.student.std <- function(Z, V) {
  dens <- Z / (V / sqrt(V))
  dens
}

