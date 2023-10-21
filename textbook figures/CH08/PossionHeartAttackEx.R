# Predicting number of heart attacks likely to happen in one hour

MeanNrHeartAttack <- 24/24 # Mean number of heart attacks pr hour
nr_Heart_Attack = 0:6 # We want to see the probabilities for 0 to 6 heart attacks

# calculate the Poisson distribution
prob_Heart_Attack <- dpois(nr_Heart_Attack, MeanNrHeartAttack) # 

# Plot the data in a barplot
p <- barplot(prob_Heart_Attack,
        names.arg = nr_Heart_Attack,     # names for each bar
        width = 1,
        space = 0,
        col = 'blue',                    # Color of bars
        border = '#48b5c4',
        main = "Probability of number of heart attacks pr hour",   # Main title
        ylab = "Probability",            # X label
        xlab = "Heart attacks pr hour",    # y label
        ylim = c(0,0.4),
        cex.names = 1.1,
        cex.axis = 1.1,
        cex.lab = 1.4,
        cex.main = 1.4
)   

text(x = nr_Heart_Attack + 0.5, 
     y = prob_Heart_Attack + 0.01, 
     labels = paste0(round(prob_Heart_Attack*100,1), "%"),
     cex = 1)




poisson.test(x = 42,
             T = 1, # time base for event count, so if x was 42 events in 4 hours and we wanted it in events pr hour we would say 4 here
             r = 33.45, # hypothesized rate so we want to test if the true rate could be 33.45 events pr hour
             conf.level = 0.95, # we also what the 95% confidence interval around x
             )

