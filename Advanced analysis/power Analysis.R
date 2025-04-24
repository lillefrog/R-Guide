
# Power analysis
install.packages("pwr")
library(pwr)

# What sample size do i need to detect this effect size
pwr.t.test(d = 0.5, sig.level = 0.05, power = 0.80, type = "two.sample")

# What effect size can I detect with this sample size
pwr.t.test(n = 20, sig.level = 0.05, power = 0.80, type = "two.sample")
