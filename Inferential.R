

 #####Subsetting/Filtering cases from data frame object
 #Print data frame on the console
 print(my_data)
 
 #Determine the class/type of the variables
 str(my_data)
 
 #Subset by gender(female)
 Femaledata <- subset(my_data, Gender=="Female")
 Femaledata
##List of logical operators
 #< "less than"
 #> "greater than"
 #<= "less than or equal to
 #>= "greater than or equal to"
 #== "equal to"
 #!= "not equal to"
 #|  "or"
 #! "not"
 #& "and"
 #Subset by gender(not equal to female)
maledata <- subset(my_data, Gender!="Female")
maledata

#subset by gender or consumption
sub1 <- subset(my_data, Gender=="Female" | Consumption != "Never")

#subset by gender and consumption
sub1 <- subset(my_data, Gender=="Female" & Consumption != "Never")

#subset out id of 8 and 9
sub1 <- subset(my_data, !ID%in% c(8,9))

#The above is same as running the two codes below
sub1 <- subset(my_data, ID != 8)
sub1 <- subset(my_data, ID != 9)

#subset by removing columnS from the dataframe
datasubset <- subset(my_data, select = -c(Agegroup, Consumption, Preference))
