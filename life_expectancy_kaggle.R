life_expectancy <- read.csv("life_expectancy_kaggle.csv")

# filtering only 2015 values

life_expectancy_15 = life_expectancy %>%
        filter(year == "2015") %>%
        select(-year)

library(naniar)

vis_miss(life_expectancy_15)

life_expectancy_10 = life_expectancy %>%
        filter(year == "2010") %>%
        select(-year)

vis_miss(life_expectancy_10)

life_expectancy_14 = life_expectancy %>%
        filter(year == "2014") %>%
        select(-year)

vis_miss(life_expectancy_14)

# considering 2014 and removing missing values
# total obs. estimate = 143


life_expectancy_05 = life_expectancy %>%
        filter(year == "2005") %>%
        select(-year)

vis_miss(life_expectancy_05)
