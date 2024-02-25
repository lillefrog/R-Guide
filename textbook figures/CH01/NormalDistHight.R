# Example of normal distribution
# Session 2018 
# Number of participants 37352 
# average height (181,16 + 180,82)/2
# standard deviation is not reported but other studies show a SD for males around 7cm

x <- rnorm(37352, sd=7, mean = 181)
hist(x, 
     breaks = 150:210,
     col = 'blue',                     # Color of bars
     border = 'white',                  # color of borders around bars
     main='Hight of Danish men born in 2000',
     ylab='Number',
     xlab ='Height (cm)')   