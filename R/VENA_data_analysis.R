# load libraries
library(tidyverse)

# load data
df_data <- read_csv(file = "inputs/VENA HH data cleaned_without ID.v9_withoutPSN.csv", col_types = NULL)

# check data
dim(df_data)
colnames(df_data)
class(df_data)

# filter data
df_from_start_date <- df_data %>% 
  filter(start == "04-Sep-19")

# calculate mean hh size

