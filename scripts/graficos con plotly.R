# Histograma con plot_ly
estaturas1 <- rnorm(100, mean = 170, sd = 5)
estaturas2 <- rnorm(100, mean = 175, sd = 6)

estaturas <- data.frame(estaturas1, estaturas2)
#pesos <- rnorm(100, mean = 70, sd = 10)
#edades <- rnorm(n = 100, mean = 25, sd = 5)

histos <- plot_ly(alpha = 0.6)
histos <- histos %>% add_histogram(x = estaturas1) %>%  layout(xaxis = list(title = "estatura1"))
histos <- histos %>% add_histogram(x = estaturas2)
histos <- histos %>% layout(barmode = "overlay")

histos


# Otro ejemplo: 

p1 <- plot_ly(diamonds, x = ~price) %>%
  add_histogram(name = "plotly.js")

price_hist <- function(method = "FD") {
  h <- hist(diamonds$price, breaks = method, plot = FALSE)
  plot_ly(x = h$mids, y = h$counts) %>% add_bars(name = method)
}

subplot(
  p1, price_hist(), price_hist("Sturges"),  price_hist("Scott"),
  nrows = 4, shareX = TRUE
)


# Con estaturas1  y estaturas2
hist1 <- plot_ly(estaturas, x = ~estaturas1) %>%
  add_histogram()
hist2 <- plot_ly(estaturas, x = ~estaturas2) %>%
  add_histogram()


subplot(
  hist1, hist2, nrows = 1, ncol(2), shareX = FALSE
)

# 
personasLM <- data.frame(estatura = rnorm(100, mean = 160, sd = 5),
                       peso = rnorm(100, mean = 60, sd = 5),
                       region = "LATIN", 
                       genero = rep("MUJER", 100))
personasLH <- data.frame(estatura = rnorm(100, mean = 165, sd = 5),
                         peso = rnorm(100, mean = 80, sd = 5),
                         region = "LATIN", 
                         genero = rep("HOMBRE", 100))
personasNAM <- data.frame(estatura = rnorm(100, mean = 170, sd = 5),
                         peso = rnorm(100, mean = 70, sd = 5),
                         region = "NORTE AMERICA", 
                         genero = rep("MUJER", 100))
personasNAH <- data.frame(estatura = rnorm(100, mean = 180, sd = 5),
                         peso = rnorm(100, mean = 90, sd = 5),
                         region = "NORTE AMERICA", 
                         genero = rep("HOMBRE", 100))
personasEM <- data.frame(estatura = rnorm(100, mean = 172, sd = 5),
                          peso = rnorm(100, mean = 70, sd = 5),
                          region = "EUROPA", 
                          genero = rep("MUJER", 100))
personasEH <- data.frame(estatura = rnorm(100, mean = 182, sd = 5),
                          peso = rnorm(100, mean = 88, sd = 5),
                          region = "EUROPA", 
                          genero = rep("HOMBRE", 100))

personas <- rbind(personasLM, personasLH, personasNAM, personasNAH,
                  personasEM, personasEH)
personas


# Dispersión en función de peso estatura en función del genero
dispersion <-  plot_ly(data = personas ,x =  ~peso, y = ~estatura, color = ~genero, type = 'scatter', mode = 'markers')%>%
  layout(title = 'Pesos vs. Estaturas de personas', plot_bgcolor = "#e5ecf6")
dispersion

# Dispersión en función de peso estatura en función de region
dispersion <-  plot_ly(data = personas ,x =  ~peso, y = ~estatura, color = ~region, type = 'scatter', mode = 'markers')%>%
  layout(title = 'Pesos vs. Estaturas de personas', plot_bgcolor = "#e5ecf6",
         legend=list(title=list(text='<b> Región </b>')))
dispersion


# Ventas
dias <- 1:31
ventas1 <- round(rnorm(n = 15, mean = 100, sd = 10),0)
ventas2 <- round(rnorm(n = 16, mean = 120, sd = 10),0)

enero <- data.frame(dias = dias, ventas = c(ventas1, ventas2))
enero

dias <- 1:28
ventas1 <- round(rnorm(n = 15, mean = 120, sd = 10),0)
ventas2 <- round(rnorm(n = 13, mean = 125, sd = 10),0)
febrero <- data.frame(dias = dias, ventas = c(ventas1, ventas2))
febrero


lineal <- plot_ly(data = enero, x = ~dias, y = ~ventas, 
        type = 'scatter', mode = 'lines', name = 'Enero')
lineal <- lineal %>% add_trace(data = febrero, x~dias, y = ~ventas, name = 'Febrero')
lineal <- linea %>% layout(legend = l)

lineal
