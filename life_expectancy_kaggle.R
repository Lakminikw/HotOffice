library(tidyverse)
library(naniar)
library(GGally)

#### Data Preprocessing
life_expectancy <- read.csv("life_expectancy_kaggle.csv")


# filtering only 2014 values and removing missing values

# 
# life_expectancy_10 = life_expectancy %>%
#         filter(year == "2010") %>%
#         select(-year)
# vis_miss(life_expectancy_10)
# life_complete_10=na.omit(life_expectancy_10)

life_expectancy_14 = life_expectancy %>%
        filter(year == "2014") %>%
        select(-year)

vis_miss(life_expectancy_14)
LE=na.omit(life_expectancy_14)

#### Data Understanding
str(LE)

ggpairs(data = LE[,-1])
ggpairs(data = LE[,c("life_exp","status", "adult_mort", "alcohol","BMI","HIV", "Income", "school")])




