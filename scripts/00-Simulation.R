#### Simulate Progress ####
# The purpose of this is to simulate some data that can be use for DHS program
  
#The sample size had been set at 10000, which include the variables named people, age, gender, education. The age is the age groups, and gender is female and male, education is the education level which includes no education, primary, middle, and secondary.


library(tidyverse)

people <-  1: 10000


gender <- sample(c("Female", "Male"), 
                 size = 10000, 
                 prob = c(1-0.48, 0.48), 
                 replace = TRUE)
age <- sample(c("10-14", "15-19", "20-24", "25-29", "30-34", "35-39", "40-44", "45-49", "50-54", "55-59", "60-64", "65+"), 
              size = 10000, 
              prob = c(0.16, 0.1, 0.1, 0.09, 0.07, 0.07, 0.05, 0.045, 0.04, 0.029, 0.025, 0.06), 
              replace = TRUE)
education <- sample(c("no_education", "primary", "middle", "secondary"),
                    size = 10000,
                    prob = c(0.36, 0.22, 0.36, 0.6),
                    replace = TRUE)
survey <- tibble(people,
                 gender,
                 age,
                 education)

survey

