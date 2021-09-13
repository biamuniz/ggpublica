library(showtext)
library(extrafont)
library(esquisse)
library(ggplot2)
library(tidyverse)

install.packages("plotly")
library(plotly)

df <- read.csv2("dados_exemplo.csv", sep = ";")

fix(df)

graf <- ggplot(df) +
 aes(x = REGIAO, weight = AZITROMICINA) +
 geom_bar(fill = "#fdc926") +
 labs(x = "Região", y = "Quantidade de caixas vendidas", title = "Caixas vendidas de azitromicina por região", caption = "Dados: Anvisa") + 
  theme(plot.title = element_text(family = "Bitter", size = 15, face = "bold"), panel.background = element_rect(fill = 'white'), axis.title = element_text(family = "Bitter", size = 10, face = "bold"), axis.text = element_text(family = "Raleway", size = 12), plot.caption = element_text(family = "Bitter", size = 10))+
 coord_flip()

ggplotly(graf)
