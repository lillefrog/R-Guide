# demonstration of t-test

# random data for 2 groups with different means
group1 <- rnorm(n = 30, mean = 182, sd = 10.8)
group2 <- rnorm(n = 30, mean = 171, sd = 11.0) 

# Test if group1 is equal to 0 (two-sided)
t.test(group1) 


# Test if the groups are equal to each other (not paired, two-sided)
t.test(group1,group2)


# comparing the groups but with more options
# Test if the groups are equal to each other (paired, two-sided)
t.test(group1,group2,
       paired = TRUE,              # is it paired data? TRUE or FALSE
       alternative = 'two.sided',  # what type of test? "two.sided" (default), "greater" or "less"
       var.equal = TRUE,           # do you think the variance is the same in both groups? TRUE or FALSE
       conf.level = 0.99)          # calculate the 99% confidence inteval instead of 95%

# remember that when doing a paired test each datapoint in one dataset is compared
# to the same datapoint in the other dataset. So they have to be from the same person / connected

## RESULT ----
# The t-test will give you following information
# t-score and degrees of freedom: we don't care much about those
# p-value: The probability of getting this result if H0 is true
# The alternative hypothesis: what we are trying to prove
# The confidence interval: The interval that the true difference between the groups are within 95% of the time
# Mean difference: If you are comparing two groups you get the mean difference here