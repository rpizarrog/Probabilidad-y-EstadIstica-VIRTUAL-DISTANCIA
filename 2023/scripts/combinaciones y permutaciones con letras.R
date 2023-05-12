# Factorial
# 3 significa multiplicar 3 * 2 * 1
factorial(x = 3)

# 3 * 2 *1


factorial (10) # 10 * 9 * 8 * 7 * 6 * 5 * 4 * 3 *2 *1



options(scipen=999) # No al formato notación científica
factorial(20)

factorial(100)

factorial(170)

factorial(200) # genera infinito

# Combinaciones

# install.packages("gtools") # Instalar
library(gtools)  # Cargar linrería en memoria
letras <- c("A", "B", "C", "E", "H", "I", "D", "F")
letras

combinaciones = data.frame(combinations(n = length(letras), r = 4, v = letras))
combinaciones


# Cuantas combinacions son posibles ?
n <- length(letras)
r <- 4   # grupos de cuantos en cantos 2
numerador = factorial(n)
denominador = factorial(r) * factorial(n - r)

numerador
denominador

n_comb <- numerador / denominador
paste("EL numero de combinaciones es: " , n_comb)


# Permutaciones
# El acomodo de las letras NO IMPORTA


permutaciones <- data.frame(permutations(n = length(letras), r = 4, v = letras))
permutaciones

# Conforme a la formula
numerador <- factorial(n)
denominador <- factorial(n - r)
numerador
denominador

n_perm <- numerador / denominador
paste("La cantidad de permutaciones es: ", n_perm)

# De las permutaciones , ¿en cuántas ocasiones aparece la letra A en la primer columna?
cuantasA <- subset(permutaciones, X1 == 'A')
cuantasA

# ¿Y cual es su probabilidad de encontrrar la letra A en primer columna?
nrow(cuantasA) / n_perm * 100


# De las permutaciones , ¿en cuántas ocasiones aparece la letra A en la primer columna y la letra B en la tercer columna?
cuantasAB <- subset(permutaciones, X1 == 'A' & X3 == 'B')
cuantasAB

# ¿Y cual es su probabilidad de encontrar la letra A en primer columna y la letra B en la tercer columna?
nrow(cuantasAB) / n_perm * 100








