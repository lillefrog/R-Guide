# Confidence intervals for proportions
# Test of observed cases / events

# example: 40 children out of 159 gets the flu during a school year
# is that 50% of the class?

binom.test(40,159,0.5)

# P-value 2.6e-10 # no the probability is not 50%
# Probability of sucess (that is getting sick) = 0.25157
# 95% confidence intervals 0.1862103   0.3264340


