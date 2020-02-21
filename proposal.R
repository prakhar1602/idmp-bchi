library(tidyverse)
data = read.csv("BCHI-dataset_2019-03-04.csv")
data %>%
  filter(Year!=2017 && Year!=2018) %>%
  ggplot(aes(Year)) + 
  geom_histogram()

data %>%
  filter(Year==2017) 
  
  