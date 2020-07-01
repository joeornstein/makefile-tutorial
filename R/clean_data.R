## Clean the dataset

library(tidyverse)

data <- read_csv('data/raw_data.csv')

# drop the 20th row
n <- nrow(data)
data <- data[c(1:19,21:n),]

# Save as RDS
saveRDS(data, file = 'data/clean_data.RDS')
