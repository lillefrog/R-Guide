# Pisa scores for selected countries
# None of the shown countries have scores that are significantly different from
# the Danish score

# set the colors of the bar plot to values from my default list
MyColoes2 = c("#115f9a", "#1984c5", "#22a7f0", "#48b5c4", "#76c68f", "#a6d75b", "#c9e52f", "#d0ee11", "#d0f400")
ColList <- rep("#1984c5",10) # repeat color 10 times
ColList[3] = "#115f9a" # Change the color for Denmark

# add the scores from the PISA data set (rev reverses the order, just to make it look nicer)
score = rev(c(506,506,505,504,504,503,503,501,499,498))
country = rev(c('Sweden', 'New zeeland', 'United States', 'United Kingdom', 'Japan', 'Austalia', 'Chinese Taipei', 'Denmark', 'Norway', 'Germany'))

# set the margins for the figure
par(mar=c(4,4,4,4), oma=c(0,4,0,0))

# Plot the bar plot
barplot(score, names.arg = country, 
        horiz = TRUE, # make the plot horizontal
        las=2, # Rotate the bar Names
        cex.names = 1, # Scale the bar names
        xlim = c(495, 508), # zoom in on the x axis
        xpd = FALSE, # Prevent the bar plot going outside the figure area
        xlab = 'Pisa score', 
        col = ColList) # set colors