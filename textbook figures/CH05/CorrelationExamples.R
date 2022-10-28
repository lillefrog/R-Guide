# correlation example

# correlated data ----
AGE <- c(10, 17, 59, 33, 45, 71, 40, 42, 25)
HL  <- c( 0,  5, 30, 15, 25, 40, 24, 18, 12) # Hearing Loss
TAI <- c(30 , 5, 15, 40,  0, 25, 24, 12, 22)  # Tea appreciation index
CDI <- c(0 , 20, 39, 30, 35, 41, 32, 34, 21) # Chocolate dependency index


plot(AGE, HL,  frame.plot = FALSE, cex = 2, pch = 16, col = "#115f9a", cex.axis = 1.3, cex.lab = 1.5)

plot(AGE, TAI, frame.plot = FALSE, cex = 2, pch = 16, col = "#115f9a", cex.axis = 1.3, cex.lab = 1.5)

plot(AGE, CDI, frame.plot = FALSE, cex = 2, pch = 16, col = "#115f9a", cex.axis = 1.3, cex.lab = 1.5)


# pearson expects a linear relationship and normal data
cor(AGE, HL, method = 'pearson')

# Spearman does NOT expect a linear relationship or normal data
cor(AGE, CDI, method = 'spearman')

# kendall does NOT expect a linear relationship ??
cor(AGE, CDI, method = 'kendall')



# Correlation matrix ----
df <- data.frame(AGE,HL,TAI,CDI)
plot(df)
cor(df, method = 'pearson')
cor(df, method = 'spearman')
cor(df, method = 'kendall')



