# External Script #1

## @knitr load_libraries
library(tidyverse)

## @kniter load_data
swcharacters <- dplyr::starwars

## @knitr display_data
swcharacters

## @knitr visualize_data
swcharacters %>% 
  ggplot(aes(fct_rev(fct_infreq(hair_color)))) +
  geom_bar() +
  coord_flip()

## @knitr get_repub_prezes
ggplot2::presidential %>% 
  filter(party == "Republican") %>% 
  mutate(repub_prezes = name) %>% 
  pull(repub_prezes)

# @knitr starwars_foo
dplyr::starwars