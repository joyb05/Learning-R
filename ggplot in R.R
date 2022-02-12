install.packages("ggplot2")
library(ggplot2)
library(palmerpenguins)
data("penguins")
View(penguins)
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, alpha = species))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species, shape = species))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species, shape = species, size = species))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g), color = "red")

ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g))

ggplot(data = penguins) + 
  geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g))

ggplot(data = diamonds) + geom_bar(mapping = aes(x= cut))

ggplot(data = diamonds) + geom_bar(mapping = aes(x= cut, color = cut))

ggplot(data = diamonds) + geom_bar(mapping = aes(x= cut, fill = cut))

ggplot(data = diamonds) + geom_bar(mapping = aes(x= cut, fill = clarity))

ggplot(data = penguins, aes(x= flipper_length_mm, y= body_mass_g))+ 
  geom_point() +       
  geom_smooth(method="loess")