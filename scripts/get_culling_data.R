library(here)
library(tidyverse)

data <- read.csv(here("data", "Peces_Transecto_SAM.csv"), stringsAsFactors = T) %>% 
  janitor::clean_names() %>% 
  filter(genero == "Pterois") %>% 
  select(year = ano, site = comunidad, total_length = talla_promedio, depth = profundidad_inicial, N = abundancia) %>% 
  untable(num = .$N) %>% 
  mutate(total_length = as.numeric(total_length),
         depth = as.numeric(depth)) %>% 
  select(-N)
  
cor(data$total_length, data$depth)


ggplot(data, aes(x = total_length, y = depth)) + geom_point()
