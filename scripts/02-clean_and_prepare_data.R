#### Preamble ####
# Purpose: Clean the survey data downloaded from [...UPDATE ME!!!!!]
# Author: Shengyi Dai, Suofeiya Guo, Zifeng Zhu
# Data: 29 March 2021
# Contact: celina.dai@mail.utoronto.ca, suofeiya.guo@mail.utoronto.ca, zifeng.zhu@mail.utoronto.ca
# License: MIT


#### Clean the data ####

just_page_i_nohead <- just_page_i[c(13:25, 45:57)]
just_page_i_nohead

# make it as a tibble
demography_data <- tibble(all = just_page_i_nohead)
demography_data

# split column 
demography_data <-
  demography_data |>
  mutate(all = str_squish(all))|>
  separate(col = all,
           into = c("age","no_education", "Primary", "Middle", "Secondary", "Missing", "Total", "Number", "Median"),
           sep = " ",
           remove = TRUE,
           fill = "right",
           extra = "drop") |>
  add_column(Gender = c(rep("Female", 13), rep("Male", 13)))
raw_data <-
  rbind(demography_data |> select(age, no_education, Primary, Middle, Secondary, Number, Gender)|>
          filter(age != "6-9") )
raw_data
write.csv(raw_data, "1STA304/paper4/inputs/data/reduced_data.csv")