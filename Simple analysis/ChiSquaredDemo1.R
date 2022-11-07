# Chi Squared test


## Goodness of fit test ----
# is the data evenly distributed in the categories?

eyeColor <- c(5, 10, 5) # Green, Brown, Blue

chisq.test(eyeColor)



# Is the data distributed with the following probabilities?
# here we can set what probabilities we expect and test if that is true

prob <- c(0.2, 0.6, 0.2) # must add up to 1 (if not add rescale.p = TRUE)
eyeColor <- c(5, 20, 5)

chisq.test(eyeColor, p = prob)


## Test of independence ----
# Do two groups have the same distribution?
# This is also a test of independence, if we divide a group based on one variable we 
# would expect the distribution of the other to be unchanged

eyeColor1 <- c(21, 29, 12)  # Blond hair
eyeColor2 <- c(49, 21, 3)   # Brown hair
eyeMatrix <- cbind(eyeColor1, eyeColor2)

result <- chisq.test(eyeMatrix)

result$observed # show the observed frequencies
result$expected # show the expected frequencies
result


# Using the table function 
# Instead of counting manually we can use the table() function to count for us if we just have lists of data

SEX <- c('F','F','F','F','F','F','F','F','F','F','F','F','F','F','M','M','M','M','M','M','M','M','M','M','M','M','M','M','M','M','M')
HAND <- c('L','L','R','R','L','L','R','L','R','L','L','R','L','L','L','R','R','R','L','R','R','L','R','L','R','R','L','R','R','R','R')

dataTable <- table(SEX, HAND)
dataTable # Show the data table

test <- chisq.test(dataTable)
test # Show the test result




# test of independence, is eye color and hair color independent?


DarkHair <- c(7, 15, 2)
LightHair <- c(22, 11, 4)  
eyeMatrix <- cbind(DarkHair, LightHair)

result <- chisq.test(eyeMatrix)

result$observed # show the observed frequencies
result$expected # show the expected frequencies
result

