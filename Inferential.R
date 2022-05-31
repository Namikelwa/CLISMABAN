

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


#subsetting data by attribute and visualization

##APPEARANCE

boiledA <- select (my_data, starts_with("BA"))
boiledA <- select (my_data, Preference, starts_with("BA"))
BarChart(data=boiledA)

mashedA <- select (my_data, starts_with("MA"))
BarChart(data=mashedA)

stewdA<- select (my_data, starts_with("SA"))
BarChart(data=stewdA)

FriedA<- select (my_data, starts_with("FA"))
BarChart(data=FriedA)

##SMELL

#boiledS<- select (my_data, starts_with("BS"))
#BarChart(data=boiledS)

mashedS<- select(my_data, starts_with("MS"))
BarChart(data=mashedS)

stewedS<- select(my_data, starts_with("SS"))
BarChart(data=stewedS)

friedS<- select(my_data, starts_with("FS"))
BarChart(data=friedS)

##TASTE
mashedT<- select(my_data, starts_with("MT"))
BarChart(data=mashedT)

boiledT<- select (my_data, starts_with("BT"))
BarChart(data=boiledT)

stewedT<- select(my_data, starts_with("ST"))
BarChart(data=stewedT)

friedT<- select(my_data, starts_with("FT"))
BarChart(data=friedT)


#statics for every variety
Line1<- select(my_data, ends_with("1"))
BarChart(data=Line1)

Line2<- select(my_data, ends_with("2"))
BarChart(data=Line2)

Line3<- select(my_data, ends_with("3"))
BarChart(data=Line3)

Line4<- select(my_data, ends_with("4"))
BarChart(data=Line4)

Line5<- select(my_data, ends_with("5"))
BarChart(data=Line5)

Line6<- select(my_data, ends_with("6"))
BarChart(data=Line6)


