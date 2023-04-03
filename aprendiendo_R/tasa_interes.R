# importar librerias
library(readr)
library(tidyverse)
library(ggplot2)
library(scales)
library(plotly)
library(zoo)

# leer bases de datos
datos <- read.csv("tasaInteresMes.csv",header = TRUE ,sep = ",")
View(datos)
# Formatear tipo fecha columna TIME
datos$Fecha <- as.Date(as.yearmon(datos$TIME))

grafico1 <- ggplot(datos, aes(x = Fecha, y =Value/100 , group = LOCATION, color = LOCATION)) +
  geom_line()+
  labs(x = "Fecha", y ="Tasa de interés", color = "País")+
  scale_y_continuous(labels = percent )

ggplotly(grafico1)

  
