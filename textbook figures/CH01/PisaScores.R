# Pisa scores for selected contries
# None of the shown contries have scores that are signifikantly different from
# the Danish score

score = c(506,506,505,504,504,503,503,501,499,498)
country = c('Sweden', 'New zeeland', 'United States', 'United Kingdom', 'Japan', 'Austalia', 'Chinese Taipei', 'Denmark', 'Norway', 'Germany')
par(mar=c(4,4,4,4), oma=c(0,4,0,0))
barplot(rev(score), names.arg = rev(country), 
        horiz = TRUE, 
        las=2, 
        cex.names = 1,
        xlim = c(495, 508),
        xpd = FALSE,
        xlab = 'Pisa score')