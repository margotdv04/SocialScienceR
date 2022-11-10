library(tidyverse)
library(janitor)

hdi <- read_csv("data-raw/hdi_human_development_index.csv")
happiness <- read_csv("data-raw/hapiscore_whr.csv")
democracy <- read_csv("data-raw/democracy_score_use_as_color.csv")

#data cleaning

#pivot
happiness <- happiness %>%
  pivot_longer(cols = -country,
               names_to = "year",
               values_to = "happiness")
democracy <- democracy %>%
  pivot_longer(cols = -country,
               names_to = "year",
               values_to = "democracy")
hdi <- hdi %>%
  pivot_longer(cols = -country,
               names_to = "year",
               values_to = "hdi")

#filter year after & including 2004
democracy <- democracy %>%
  filter(year >= 2004)

hdi <- hdi %>%
  filter(year >= 2004)

#join
country_indicators <- democracy %>%
  full_join(hdi)

country_indicators <- country_indicators %>%
  full_join(happiness)

#filter again
country_indicators <- country_indicators %>%
  filter(year <= 2010)


usethis::use_data(country_indicators, overwrite = TRUE)

