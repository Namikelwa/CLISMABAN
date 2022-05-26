

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
