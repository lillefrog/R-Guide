## simulating datasets
# when testing statistical analysis it can be very useful to generate
# different datasets. This is some examples of how to do this in R

# GENERATE samples
# generate a normally distributed dataset
rnorm(n = 94, mean = 170, sd = 10) 

# randomly select values from a predefined list
# Very useful for simulating data from a questionaire
sex <- sample(c('M','F'), 94, replace = TRUE) 

# replace = true means that each value can be choosen more than once


## GENERATE DISTRIBUTIONS
# generate a Binomial distribution 
x = 0:10
y = dbinom(x, size = 10, prob = 0.5)
#plot(x, y, type = 'h')

barplot(y, names.arg = x )
