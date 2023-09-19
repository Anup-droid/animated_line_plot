# libraries:
library(ggplot2)
library(gganimate)
library(babynames)
library(hrbrthemes)
library(tidyverse)
library(viridis)
library(viridisLite)
#Data Import
imm <- read_excel("C:/Users/Anup Kumar/Downloads/imm.xlsx")

# Plot
imm %>%
  ggplot( aes(x=year, y=n, group=name, color=name)) +
  geom_line() +
  geom_point() +
  scale_color_viridis(discrete = TRUE) +
  ggtitle("Routine Immunization of India in the previous 30 years") +
  theme_classic()+
  ylab("Number of Immunized children") +
  transition_reveal(year)
# Save at gif:
anim_save("Immunization.gif")
