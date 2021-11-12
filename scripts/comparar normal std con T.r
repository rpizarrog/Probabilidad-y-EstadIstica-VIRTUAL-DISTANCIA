# Graficar Normal con media igual a cero y desv igual a 1
n <- 28

xn <- seq(from = -3, to = 3, length.out = n)
densn  <- dnorm(x = xn, mean = mean(xn), sd = sd(xn))

tabla.normal <- data.frame(x = xn, y = densn)
tabla.normal

g1 <- ggplot(data = tabla.normal, aes(x = xn, y = densn)) +
  geom_point(colour = "red") +
  geom_line(colour = 'blue') +
  ggtitle("Distribución Normal Estándar(Z)", subtitle = "media = 0, sd = 1") +
  labs(x = "X's", y= "Densidad")
g1


# Distribución T Aproximada a Distribución Z Normal Stándard
xt <- seq(from = -3, to = 3, length.out = n)
denst  <- dt(x = xt, df = n - 1)

tabla.t <- data.frame(x = xt, y = denst)
tabla.t

g2 <- ggplot(data = tabla.t, aes(x = xt, y = denst)) +
  geom_point(colour = "red") +
  geom_line(colour = 'green') +
  ggtitle("Distribución T.", subtitle = paste(n-1, " grados de libertad")) +
  labs(x = "X's", y= "Densidad")

g2

# Al mismo tiempo 
tabla <- data.frame(xn, densn, xt, denst)
g <- ggplot(data = tabla) 
g <- g + geom_point(aes(x= xn, y = densn), colour = "red") 
g <- g + geom_line(aes(x= xn, y = densn), colour = "blue") 

g <- g + geom_point(aes(x= xt, y = denst), colour = "red") 
g <- g + geom_line(aes(x= xt, y = denst), colour = "green") 
g <- g + ggtitle("Densidad Normal Stándar(Z) y T", subtitle = paste("media = 0, sd = 1; ", (n-1), " grados de libertadad") )
g <- g + labs(x = "X's", y= "Densidad")

g

plot_grid(g1, g2, g, nrow = 1, ncol = 3)