#------------- ANOVA
# La prueba ANOVA unidireccional se usa para comparar la media de dos o más grupos de una variable.
# En este caso, la aplicamos para ver si hay diferencias significativas en la satisfacción ciudadana 
# entre distintos programas sociales (educación, seguridad, salud e infraestructura).
# El programa social es la variable independiente y la satisfacción ciudadana es la variable dependiente.


#------------- Librerías
library(readxl) # Para leer datos en formato Excel

#------------- Llamar la base de datos, disponible para descargar aquí:https://github.com/lesflores/anova_unidireccional/blob/main/datos_programa.xlsx
data <- read_excel("datos_programa.xlsx")

# Visualizar las primeras filas
head(data)

#------------- ANOVA
anova_programa <- aov(satisfaccion ~ programa, data = data)

# Resultados del ANOVA
summary(anova_programa)

# Prueba de Tukey para identificar en qué grupos existen diferencias significativas
TukeyHSD(anova_programa)
