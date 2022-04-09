#### Preamble ####
# Purpose: Clean the survey data downloaded from DHS website: https://dhsprogram.com/search/index.cfm?_srchd=1&bydoctype=publication&bypubtype=26%2C5%2C39%2C30%2C21%2C100&byyear=1999&byyear=1998&byyear=1997&byyear=1996&byyear=1995&byyear=1994&byyear=1993&byyear=1992&byyear=1991&byyear=1990&byyear=1989&byyear=1988&byyear=1987&bylanguage=2
# Author: Shengyi Dai, Suofeiya Guo, Zifeng Zhu
# Data: 29 March 2021
# Contact: celina.dai@mail.utoronto.ca, suofeiya.guo@mail.utoronto.ca, zifeng.zhu@mail.utoronto.ca
# License: MIT



#### Workspace setup ####
# Use R Projects, not setwd().

library(haven)
library(tidyverse)
library(pdftools)
library(stringi)
# Read in the raw data.

#### Get the data ####

getwd()
all_content <- pdf_text("1STA304/paper4/inputs/data/FR106.pdf")
just_page_i <- stri_split_lines(all_content[[31]])[[1]]
just_page_i
just_page_i <- just_page_i[just_page_i != ""]
just_page_i
just_page_i [12] |> str_squish()









