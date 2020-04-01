library(tidyverse)
bchi <- read_csv("~/Documents/College_NEU/SPRING-20/DS-5110/Project/idmp-bchi/BCHI-dataset_2019-03-04.csv")

# Removing extra Rows that are not needed.

bchi <- bchi[1:7]
names(bchi)

# Tidying up the data
bchi <- bchi %>%
  mutate(Num = row_number())
bchi
bchi_tidy <- bchi %>%
  spread(Indicator, Value)
head(bchi_tidy)

write.csv(bchi_tidy,"bchi_tidy.csv", row.names = FALSE)
