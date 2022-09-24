setwd("/Users/hanwei0927/Downloads/archive")
library(stringr)
library(dplyr)
rm(list = ls())
olympic <- read.csv2(file = "athletes.csv", header = TRUE, sep = ",")
country <- read.csv2(file = "countries", header = TRUE, sep = ",")
country <- country[,c(1,2)]
joined_tibble <- left_join(olympic, country, 
                           by = c("nationality" = "code"))

joined_tibble <- na.omit(joined_tibble)

write.csv(joined_tibble,"/Users/hanwei0927/Downloads/archive/newolympic.csv", row.names = FALSE)
