## Create tables 1 and 2

library(tidyverse)
library(xtable)

# Load data
data <- readRDS('data/clean_data.RDS')


# Table 1: write first ten rows of data to a LaTeX file
data %>%
  head(10) %>% 
  xtable(type = 'latex') %>%
  print.xtable(file = 'tables/table1.tex')


# Table 2: write summary of data to a LaTeX file
data %>% 
  summarise(mean_x = mean(x),
            mean_y = mean(y)) %>% 
  xtable(type = 'latex') %>% 
  print.xtable(file = 'tables/table2.tex')
