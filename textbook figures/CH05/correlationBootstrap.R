# bootstrap correlation example
# The bootstrap version can calculate the pearson R and the confidence intervals
# around it for data that is not normally distributed.
# Notice that for a linear correlation the data should still be on a ratio
# or interval scale

# install.packages("confintr") # first time we need to install this package
library(confintr)

# correlated data ----
AGE <- c(10, 17, 59, 33, 45, 71, 40, 42, 25)
HL  <- c( 0,  5, 30, 15, 25, 40, 24, 14, 12) # Hearing Loss

ci_cor(AGE,HL) # correlation without bootstrapping, expects normal data

ci_cor(AGE,HL,type = 'bootstrap') # does not expect normal data,

# Sample estimate is the estimate of pearsons R 

# the confidence inteval is the interval where we expect to find the 
# true population R, 95 out of 100 times.

# This function can also bootstrap confidence intervals for 
# kendall and spearman if you add method = "kendall" or  method = "spearman"

ci_cor(AGE,HL,method = "spearman", type = 'bootstrap')
