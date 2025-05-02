# Simulate example meta-analysis data
set.seed(123)
n_studies <- 50

# Simulate standard errors: larger studies = smaller SE, smaller studies = larger SE
std_error <- sort(runif(n_studies, 0.05, 0.3), decreasing = TRUE)

# Simulate effect sizes: normally distributed around 0, more spread for smaller studies
effect_size <- rnorm(n_studies, mean = 0, sd = std_error)

# Plot the funnel plot
plot(effect_size, std_error,
     xlim = c(-1, 1), ylim = c(0.35, 0),   # reverse y-axis so small SE at top
     xlab = "Effect Size", ylab = "Standard Error",
     main = "Funnel Plot (Meta-Analysis Example)",
     pch = 19, col = "darkblue")

# Add vertical line at no effect
abline(v = 0, lty = 2)

# Add funnel (pseudo 95% confidence limits)
se_seq <- seq(0, 0.35, length.out = 100)
lines(0 + 1.96 * se_seq, se_seq, lty = 3)
lines(0 - 1.96 * se_seq, se_seq, lty = 3)