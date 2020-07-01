## Create Figure 1


library(tidyverse)


# Load Data
data <- readRDS('data/clean_data.RDS')


# Create scatter plot
p <- ggplot(data) +
  geom_point(aes(x=x,y=y)) +
  theme_minimal() +
  labs(caption = 'Source: Made Up Data')

# Save plot
ggsave('figures/fig1.png', p, scale = 2)