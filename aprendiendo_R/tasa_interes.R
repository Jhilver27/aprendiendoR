# importar librerias
library(readr)
library(tidyverse)
library(ggplot2)
library(scales)
library(plotly)

# leer bases de datos
datos <- read.csv("tasaInteresMes.csv",header = TRUE ,sep = ",")
View(datos)

grafico1 <- ggplot(datos, aes(x = TIME, y =Value/100 , group = LOCATION, color = LOCATION)) +
  geom_line()+
  labs(x = "Fecha", y ="Tasa de interés", color = "País")+
  scale_y_continuous(labels = percent )
ggplotly(grafico1)

  
