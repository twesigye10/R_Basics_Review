
library(tidyverse)

my_data <-  tibble(
  fruits = c("mangoes", "apples", "lemon" ),
  price = c(1000000000000, 2500000000000, 1200000000000)
)

my_data %>% 
  ggplot(
    aes(x=fruits, y=price))+
  geom_bar(stat = "identity")+
  scale_y_continuous(labels = scales::comma)

  
