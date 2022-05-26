
########################################################
#Questionnaire analysis#
########################################################
#Descriptive Statistics
  
# Read in the data
  
install.packages("readr")
library(readr)
my_data <- read.csv("Bananasurvey.csv")
my_data

my_data[my_data$Preference == "Boiled", c("Gender", "Agegroup")]
my_data[my_data$Preference == "Fried", c("Gender", "Agegroup")

# nominal/categorical $ ordinal measurement variables

library(dplyr)

count(my_data, Gender)       
count(my_data, BA1)
count(my_data, Preference)
count(my_data, Gender, Preference)   

count (my_data, Gender, Agegroup, Preference)

xtabs(~ Gender + Preference, data = my_data)

xtabs(~ Gender + Preference, data = my_data, addNA = TRUE)

#data visualization

install.packages("lessR")
library(lessR)
