# Cargar librería
library(ggplot2)
library(modeest)

numeros <- sample(x = 18:25, size = 650, replace = TRUE) # tecla tab

media <- round(mean(numeros), 2)
mediana <- round(median(numeros), 2)
moda <- round(mfv(numeros), 2)

print("La moda y su frecuencia")
sort(table(numeros), decreasing = TRUE)

media; mediana; moda # Imprimir en consola las tres variables


# Hacer un histograma de los numeros
ggplot() +
  geom_histogram(aes(x = numeros)) +
  geom_vline(xintercept = media, color = 'red') +
  geom_vline(xintercept = mediana, color = 'blue') +
  geom_vline(xintercept = moda, color = 'yellow', linetype = 2) +
  ggtitle(label = paste("Me:",media, "; Mediana:",mediana, "; Moda:", moda ))

# La distribución es asimétrica


