# Probar abline

# Las coordenadas
set.seed(132)
x <- seq(1, 10, by = 0.05)
y <- x^2 + rnorm(x, sd = 10)

# Graficar
plot(x, y, pch = ifelse(x > 8, 23, ifelse(y < 0, 24, 21)),
     bg = ifelse(x > 8, "deepskyblue", ifelse(y < 0 , "orange", "lightgreen")))

abline(h = 0)



# Agregar elementos a lattice
xyplot(rnorm(100) ~rnorm(100))

ladd(panel.abline(a=0,b=1))
ladd(panel.abline(h=0,col='blue'))
ladd(panel.abline(v=1,col='red'))


# Ahora con plotDist()

plotDist(dist = "t", df = 29, type = "h" )



plotDist(dist = "t", df = 15, type = "h" , 
         group = x >= -2 & x <=2, col=c("red","blue"))



x = 1
y = dt(x = 1, df = 29)

ladd(panel.abline(v = seq(-3, 3, 1),col='white'))


