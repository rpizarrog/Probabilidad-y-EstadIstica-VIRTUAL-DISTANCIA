# Combinaciones
# install.packages("gtools")
library(gtools)
ingredientes <- c('tomate', 'zanahoria', 'papa', 'brócoli')
n <- length(ingredientes)
k <- 2 # combinar de dos en dos

combinaciones <- combinations(n = n, r = k, v = ingredientes)
combinaciones
