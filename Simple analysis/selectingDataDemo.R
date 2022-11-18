## Demonstration of data selection in Base R

# Generate a dataset for the examples ----
ID <- 101:194 # generate a ID number for each person from 101 to 194
height <- rnorm(n = 94, mean = 170, sd = 10) 
weight <- rnorm(n = 94, mean = 80, sd = 7)
sex <- sample(c('M','F'), 94, replace = TRUE) # M = Male, F = Female
myData <- data.frame(ID,height,weight,sex)

## Select one value ----

myData$height[22] # Get height of person in position 22

myData[22,1] # Get the first collum value for the person in position 22


## select more values ----

myData[22,] # Get all the collums for the person in position 22 (the empty space after , means that we want everything)

myData[22:24,1] # Get the first collum value for the persons in position 22 to 24

myData[22,1:3] # Get the first to third collum value for the person in position 22


## Select based on content ----

myData[myData$sex == 'M',1] # Get the first collum value for all where sex is equal to 'M' (remember the '' when it is text)

myData[myData$sex != 'M',1] # Get the first collum value for all where sex is NOT equal to 'M'

myData[myData$sex == 'F',c(1,3)] # Get the first and third collum value for all where sex is equal to 'F'

myData[myData$sex == 'F','ID'] # Get the ID value for all where sex is equal to 'F'


## Store selected data in new variable

maleData <- myData[myData$sex == 'M',] # store data where sex is equal to 'M' in maleData
femaleData <- myData[myData$sex == 'F',] # store data where sex is equal to 'F' in femaleData

t.test(maleData$weight, femaleData$weight) # compare weight for the male and female dataset