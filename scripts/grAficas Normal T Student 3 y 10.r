# Otra Gráfica Normal y T Student

# Plotting 
library(ggplot2)  # Para gráficos
library(cowplot) #Imágenes en el mismo renglón
options(scipen=999) # Notación normal

# Crear una secuencia de -5 a 5 de 0.01 en 0.01
x <- seq(- 5, 5, by = 0.01)


# Crear puntos de y normal aplicando dnorm()
# Media igual a 0 y desv igual a 1
media <- 0 # round(mean(x),4)
desv <- 1 # round(sd(x),4)
y_dn <- dnorm(x = x, mean = media, sd = desv)

# Aplicando la función dt() 
# dt() determina el valor de densidad de una T Student
# Con 3 y 10 grados de libertad respectivamente
grados_l <- c(3,10)
y_dt_3 <- dt(x, df = grados_l[1])
y_dt_10 <- dt(x, df = grados_l[2])


tabla <- data.frame('x' = x, 
                    'normal' = y_dn, 
                    'student_3' = y_dt_3,
                    'student_10' = y_dt_10)
tabla

g1 <- ggplot(data = tabla, aes(x = x, y = normal)) +
  geom_line(colour = 'blue') +
  ggtitle("Distribución Normal Stándard", subtitle = paste("Media=",media, " Desv Std=", desv)) +
  labs(x = "X's", y= "Densidad")


g2 <- ggplot(data = tabla) +
  geom_line(aes(x= x, y = normal), colour = "blue") +
  geom_line(aes(x= x, y = student_3), colour = "green") + 
  geom_line(aes(x= x, y = student_10), colour = "yellow") + 
  ggtitle("Densidad Normal Stándar(Z) y T", 
          subtitle = paste("media = ",media, " Desv =", desv, "; grados de libertdad ", grados_l[3]," y ", grados_l[2], " grados de libertad") ) + 
  labs(x = "X's", y= "Densidad")
g2

plot_grid(g1, g2, nrow = 1, ncol = 2)
