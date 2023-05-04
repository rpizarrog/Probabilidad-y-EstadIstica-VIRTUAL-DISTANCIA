# Construir unos datos
library(dplyr)

f_crear_datos_personas <- function(n, semilla) {
  
  set.seed(semilla)
  nombres <- c("JUAN", "JOSÉ LUIS", "JOSÉ", "MARÍA GUADALUPE", "FRANCISCO",
               "GUADALUPE", "MARÍA", "JUANA", "ANTONIO", "JESÚS", 
               "MIGUEL ÁNGEL", "PEDRO", "ALEJANDRO", "MANUEL", "MARGARITA", 
               "MARÍA DEL CARMEN", "JUAN CARLOS", "ROBERTO", "FERNANDO", "DANIEL",
               "CARLOS","JORGE", "RICARDO", "MIGUEL", "EDUARDO", 
               "JAVIER","RAFAEL", "MARTÍN", "RAÚL", "DAVID", 
               "JOSEFINA","JOSÉ ANTONIO", "ARTURO","MARCO ANTONIO", "JOSÉ MANUEL", 
               "FRANCISCO JAVIER","ENRIQUE", "VERÓNICA", "GERARDO","MARÍA ELENA",
               "LETICIA","ROSA", "MARIO", "FRANCISCA", "ALFREDO", 
               "TERESA", "ALICIA", "MARÍA FERNANDA","SERGIO", "ALBERTO", 
               "LUIS", "ARMANDO","ALEJANDRA", "MARTHA","SANTIAGO", 
               "YOLANDA", "PATRICIA", "MARÍA DE LOS ÁNGELES", "JUAN MANUEL","ROSA MARÍA", 
               "ELIZABETH", "GLORIA", "ÁNGEL","GABRIELA","SALVADOR",
               "VÍCTOR MANUEL", "SILVIA", "MARÍA DE GUADALUPE", "MARÍA DE JESÚS", "GABRIEL", 
               "ANDRÉS", "ÓSCAR", "GUILLERMO", "ANA MARÍA", "RAMÓN", 
               "MARÍA ISABEL", "PABLO", "RUBEN", "ANTONIA", "MARÍA LUISA",
               "LUIS ÁNGEL", "MARÍA DEL ROSARIO", "FELIPE", "JORGE JESÚS", "JAIME",
               "JOSÉ GUADALUPE", "JULIO CESAR", "JOSÉ DE JESÚS", "DIEGO", "ARACELI",
               "ANDREA", "ISABEL", "MARÍA TERESA", "IRMA", "CARMEN", 
               "LUCÍA", "ADRIANA", "AGUSTÍN", "MARÍA DE LA LUZ", "GUSTAVO")
  generos <- c('M', 'M', 'M', 'F', 'M', 
               'F', 'F', 'F', 'M', 'M', 
               'M', 'M', 'M', 'M', 'F',
               'F', 'M', 'M', 'M', 'M',
               'M', 'M', 'M', 'M', 'M', 
               'F', 'M', 'M', 'M', 'M', 
               'M', 'M', 'F', 'M', 'F', 
               'F', 'F', 'M', 'F', 'M', 
               'F', 'F', 'M', 'F', 'M', 
               'F', 'F', 'F', 'M', 'M', 
               'M', 'M', 'F', 'F', 'M',
               'F', 'F', 'F', 'M', 'F', 
               'F', 'F', 'M', 'F', 'M',
               'M', 'F', 'F', 'F', 'M',
               'M', 'M', 'M', 'F', 'M',
               'F', 'M', 'M', 'F', 'F',
               'M', 'F', 'M', 'M', 'M',
               'M', 'M', 'M', 'M', 'M',
               'F', 'F', 'F', 'F', 'F',
               'F', 'F', 'M', 'F', 'M'
  )
  
  edades <- rnorm(n = n, mean = 20, sd = 5)
  estaturas <- rnorm(n = n, mean = 160, sd = 8)
  estado_civil <- sample(x = c("SOLTERO", "CASADO", "DIVORCIADO", "VIUDO", "UNION LIBRE"), 
                         size = n, replace = TRUE, prob = c(0.24, 0.26, 0.18, 0.12, 0.20))
  
  regs <- sample(x = 1:length(nombres), size = n, replace = TRUE)
  personas <- data.frame(nombres = nombres[regs], generos = generos[regs],
                         edades, estaturas, estado_civil)
  
  personas$nombres <- as.factor(personas$nombres)
  personas$generos <- as.factor(personas$generos)
  personas$estado_civil <- as.factor(personas$estado_civil)
  
  datos <- personas
  return (datos)
  
  
}

