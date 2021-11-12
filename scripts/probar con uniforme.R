# Haciendo una gráfico con dos áreas

# Los datos
a.min <- 120
b.max <- 140
f.dens <- 1 / (b.max -a.min) # Es la altura

altura <- f.dens
x <- c(a.min, b.max) # 120, 140
y <- c(altura, altura) # 0.5, 0.5
datos <- data.frame(x, y)

datos

# La gráfica con una área
ggplot(data = datos, aes(x,y )) +
  geom_area(fill = "lightblue") +
  xlim(100, 160) +
  ggtitle(label = "Distribución uniforme continua", subtitle = paste("f(x) = ",f.dens))


# Probando ggplot
# install.packages("ggplot2")
library(ggplot2)

df <- as.data.frame(EuStockMarkets[, 1:3])
# Area chart
ggplot(df, aes(x = seq_along(SMI), y = SMI)) + 
  geom_area(fill = 4,
            alpha = 0.5,
            color = 1,    # Line color
            lwd = 0.5,    # Line width
            linetype = 1) # Line type 




# La gráfica con dos áreas
# install.packages("ggplot2")
library(ggplot2)

# Area chart
ggplot(df) + 
  geom_area(aes(x = seq_along(SMI), y = SMI),
            fill = 4, alpha = 0.85) +
  geom_area(aes(x = seq_along(DAX), y = DAX),
            fill = 3, alpha = 0.85)

# Probando dos rectángulos

# Agregando coordenadas a los datos
datos <- cbind(datos, x2=c(120,130), y2=y)
datos <- cbind(datos, texto = c('50%','50%'))
datos

ggplot(datos) + 
  geom_area(aes(x = x, y = y),
            fill = 'lightblue') +
  geom_area(aes(x = x2, y = y2),
            fill = 'pink') +
  geom_text(aes(x = x, y = y, label='texto'), col='brown') +
  xlim(100, 160) +
  ggtitle(label = "Distribución uniforme continua", subtitle = paste("f(x) = ",f.dens))


# Con varias lineas 
# distribucion
distribucion <- data.frame(x=120:140, prob = dunif(x = 120:140, min = a.min, max = b.max), prob.acum = punif(q = 120:140, min = a.min, max = b.max))
distribucion

ggplot(data = distribucion) +
  geom_line(aes(x = x, y = prob.acum))
            
  
