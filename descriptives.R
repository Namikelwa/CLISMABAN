
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

BarChart(Preference, data=my_data)
?BarChart #gives us the arguments that can be used with the bar chart function

BarChart(Preference, data=my_data, by1 = Gender)
BarChart(Preference, data=my_data, by=Gender)
BarChart(Preference, data=my_data, by1 = Agegroup)
BarChart(Consumption, data=my_data, by1 = Gender)

PieChart(Gender ,data=my_data)
PieChart(Agegroup, data = my_data)
?PieChart
#Continous variables:interval or ratio measurement scale

#used with numerical data and basically checks for data normality(one variable)
hist(my_data$BA1)

library(lessR)
Plot(BA1, data = my_data)
Plot(BA1, data = my_data, by1 = Preference)

#Measures of central tendency and dispersions
 mean(my_data$BA1, na.rm = TRUE)#If we have na remove it
 sd(my_data$BA1, na.rm = TRUE)
 median(my_data$BA1, na.rm = TRUE)
 min(my_data$BA1, na.rm = TRUE)
 max(my_data$BA1, na.rm = TRUE)
 range(my_data$BA1, na.rm = TRUE)
 var(my_data$BA1, na.rm = TRUE) #the sqrt of variance shld give us sd.
 
 #Efficiently calculates the central tendency for a whole dataset for continous variables
 #Many variables
 install.packages("psych")
 library(psych)
 describe(my_data) 


