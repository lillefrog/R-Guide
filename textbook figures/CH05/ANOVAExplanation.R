# ANOVA explanation figure

# Strip Chart ----

# Data fra Danmarks statestik "Voldsforbrydelser i alt" fra 2007 - 2022 Data er kun fra første kvartal
# Data on violent crime in Denmark. Data is only for first quarter of each year

G1	<- c(1604,	1422,	1337,	1311,	1147,	1159,	1047,	1381,	1276,	1582,	1686,	1922,	2192,	2020,	2053,	2144)
G2	<- c(639,	566,	568,	568,	514,	543,	490,	503,	508,	686,	767,	761,	968,	969,	785,	972)
G3	<- c(1071,	960,	1026,	1038,	956,	1013,	833,	843,	807,	1061,	1171,	1225,	1304,	1282,	1215,	1491)
G4	<- c(840,	905,	901,	901,	921,	875,	764,	769,	834,	952,	1227,	1212,	1295,	1306,	1126,	1149)
#G5	<- c(399,	384,	354,	382,	331,	419,	340,	317,	357,	366,	469,	436,	432,	493,	345,	534)

groupData <- data.frame(G1, G2, G3, G4)

set.seed(53)

par(mfrow = c(1,2))

stripchart(groupData, 
           method = "jitter",
           pch = 16, # set a filled circle as the symbol
           cex = 1.5,  # symbol size
           col = "#115f9aAA", # set color
           jitter = 0.2, 
           frame = FALSE, 
           vertical = TRUE, 
           main = "H0: All means are equal",
           ylab = "Events", 
           xlab = "Area")


myMean = mean(c(G1,G2,G3,G4))
lines(c(0.8, 4.2), c(myMean, myMean), col = 'red')



## figure 2 ----

stripchart(groupData, 
           method = "jitter",
           pch = 16, # set a filled circle as the symbol
           cex = 1.5,  # symbol size
           col = "#115f9aAA", # set color
           jitter = 0.2, 
           frame = FALSE, 
           vertical = TRUE, 
           main = "H1: At least one mean is different",
           ylab = "Events", 
           xlab = "Area")



myMean = mean(G1)
lines(1+c(+0.2, -0.2), c(myMean, myMean), col = 'red')

myMean = mean(G2)
lines(2+c(+0.2, -0.2), c(myMean, myMean), col = 'red')

myMean = mean(G3)
lines(3+c(+0.2, -0.2), c(myMean, myMean), col = 'red')

myMean = mean(G4)
lines(4+c(+0.2, -0.2), c(myMean, myMean), col = 'red')