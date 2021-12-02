# Funciones para gráficos

# Construye diagrama de dispersión 
f_diag.dispersion <- function (datos) { 
  # datos <- data.frame(datos)
  nom.x = colnames(datos[1])
  nom.y = colnames(datos[2])
  x = datos[,1]
  y = datos[,2]
  
  media.x <- round(mean(x), 4)
  media.y <- round(mean(y), 4)
  
  ggplot() +
    geom_point(aes(x = x, y = y), col='red') +
    geom_vline(xintercept = media.x, col='blue') +
    geom_hline(yintercept = media.y, col='blue') +
    ggtitle(label = paste("Dispersión de ", nom.x, " y ", nom.y) , 
            subtitle = paste("Media ", nom.x, " =", media.x, 
                             " , ", "Media ", nom.y, "=", media.y))+
    xlab( nom.x)+
    ylab( nom.y)
  
}
