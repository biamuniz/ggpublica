library(ggplot2)
library(extrafont)
install.packages("Cairo")

font_import(pattern = "bitter")
font_import(pattern = "raleway")
loadfonts()

my_theme <- theme(
  text = element_text(family = "Bitter"),
  plot.title = element_text(size = 20, face = "bold", hjust = 0.5),
  axis.title = element_text(size = 14),
  axis.text = element_text(size = 12),
  panel.background = element_rect(fill = "#FFFFFF", color = NA),
#  panel.grid.major = element_line(color = "#E6E6E6"),
#  panel.grid.minor = element_line(color = "#F2F2F2"),
  panel.border = element_blank(),
  legend.background = element_rect(fill = "#FFFFFF", color = NA),
  legend.text = element_text(size = 12),
  legend.title = element_text(size = 14, face = "bold"),
  legend.position = "bottom",
  plot.margin = unit(c(1, 1, 1, 1), "cm"),
  plot.background = element_rect(fill = "#FFFFFF", color = NA)
)

add_values <- function(data, x, y){
  geom_text(aes_string(x = x, y = y, label = y), vjust = -0.5)
}


# Exemplo de gráfico de colunas
data <- data.frame(categorias = c("A", "B", "C", "D"), valores = c(10, 20, 30, 40))


my_theme <- my_theme + theme(plot.margin = unit(c(2, 2, 4, 2), "cm"))


ggplot(data, aes(x = categorias, y = valores, fill = categorias)) +
  geom_col(width = 0.2) +
  add_values(data, "categorias", "valores") +
  labs(title = "Gráfico de colunas", x = "Categorias", y = "Valores") +
  scale_fill_manual(values = c("#ffd400", "#653399", "#222222", "#000000")) +
  my_theme


ggsave("meu_grafico.png", width = 10, height = 10, dpi = 300)

