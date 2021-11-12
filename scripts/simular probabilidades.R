# simular probabilidades n/N
# Probabilidad independiente porque hay 
# reemplazamiento en sample
# Extraer 100 números de una bolsa 
# que contiene números del 1 al 10
# La probabilida es la misma para 
# que salga cualquier número, es decir 1/10
N <- 100000000

numeros <- sample(1:10, size = N, replace = TRUE, 
                  prob = c(0.05, 0.05, 0.05, 0.05, .50, 0.05, 0.05, 0.05, 0.05, 0.10))
numeros

probs <- round((table(numeros) / N) * 100, 4)
probs



