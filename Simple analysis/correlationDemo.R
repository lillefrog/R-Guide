## Correlation demo ----

# define two correlated variables, this dataset is actually not linear so you will 
# see that the linear correlation won't be 1
age    <- c(3, 4, 6, 5, 9, 11, 13)
height <- c(60, 80, 110, 95, 140, 150, 160)



## Pearson correlation (parametric) ----
# Plot them to see if it looks like there is a linear relationship. If there is 
# a different type of relationship then a pearson correlation wont show that
plot(age,height)

# Then we do the linear correlation (pearson correlation)
cor.test(age, height, method = 'pearson') # if we don't write a method it will use pearson 

# The result will be a t and df value that we don't use. Then comes the p-value
# if it is less than 0.05 it means that there is a significant linear correlation
# between the two variables.
# The next line will show you either the null hypothesis or the alternative depending
# on the value of the p-value. 
# For the person correlation we then have the 95% confidence intervals for the 
# correlation 
# And last we have the estimated correlation for the sample. This is usually our 
# best guess for the true correlation but remember that it always is uncertian. 
# And if the p-value is non signifikant the correlation value has no meaning.




## Spearman correlation (non-parametric) ----
# Plot them to see if it looks like there is a monotoic (consistenly increasing 
# or increasing falling) relationship. If there is a different type of relationship 
# then a spearman correlation wont show that
plot(age,height)


# Then we do the correlation (spearman correlation)
cor.test(age, height, method = 'spearman') 

# The result will be a S value that we don't use. Then comes the p-value
# if it is less than 0.05 it means that there is a significant correlation
# between the two variables
# The last line is the estimated spearman correlation (rho). Remember that if the
# p-value is non-signifikant then this value has no meaning.
# The spearman and kendall correlation can't calculate confidence intervals


## Kendall correlation (non-parametric) ----
# The kendall correlation looks the same as the spearman correlation except that
# the correlation value is called (tau)

cor.test(age, height, method = 'kendall')


