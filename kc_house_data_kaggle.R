housedata <- read.csv("kc_house_data_kaggle.csv")

library(forcats)
library(tidyverse)

########### preprocessing view

housedata$view_cat[housedata$view < 2] = "poor" 
housedata$view_cat[housedata$view > 2] = "good" 
housedata$view_cat[housedata$view == 2] = "average" 

housedata$view_cat = as.factor(housedata$view_cat)

# housedata2$view_cat = fct_recode(housedata2$view_cat, 
#         "poor" = "1",
#         "average" = "2",
#         "good" = "3"
# )

head(housedata)

contrasts(housedata$view_cat)

########## preprocessing conditions

housedata$condition_cat[housedata$condition < 3] = "poor" 
housedata$condition_cat[housedata$condition > 3] = "good" 
housedata$condition_cat[housedata$condition == 3] = "average" 

housedata$condition_cat = as.factor(housedata$condition_cat)

########### preprocessing grade

housedata$grade_cat[housedata$grade < 5] = "low" 
housedata$grade_cat[housedata$grade > 9] = "high" 
housedata$grade_cat[housedata$grade >= 5 & housedata$grade <= 9] = "medium" 

housedata$grade_cat = as.factor(housedata$grade_cat)

contrasts(housedata$grade_cat)

########### cool 

