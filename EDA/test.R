library(tidyverse)
bchi <- read_csv("../BCHI-dataset_2019-03-04.csv")

# Removing extra Rows that are not needed.

bchi <- bchi[1:7]
names(bchi)

# Tidying up the data
bchi <- bchi %>%
  mutate(Num = row_number())
bchi
bchi_tidy <- bchi %>%
  spread(Indicator, Value)
names(bchi_tidy)
