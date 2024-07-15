# ANOVA calculation

G1	<- c(1604,	1422,	1337,	1311,	1147,	1159,	1047,	1381,	1276,	1582,	1686,	1922,	2192,	2020,	2053,	2144)
G2	<- c(639,	566,	568,	568,	514,	543,	490,	503,	508,	686,	767,	761,	968,	969,	785,	972)
G3	<- c(1071,	960,	1026,	1038,	956,	1013,	833,	843,	807,	1061,	1171,	1225,	1304,	1282,	1215,	1491)
G4	<- c(840,	905,	901,	901,	921,	875,	764,	769,	834,	952,	1227,	1212,	1295,	1306,	1126,	1149)
G5	<- c(399,	384,	354,	382,	331,	419,	340,	317,	357,	366,	469,	436,	432,	493,	345,	534)

groupData <- data.frame(G1, G2, G3, G4, G5)

# convert data to long format
LongData <- stack(groupData,       # this only works if the data is in vectors, if your data is another type you might have to convert
                  select = -c(G5)  # This deselects one or more collums (notice the - sign) use it to deselect data that cant be used
                  )
# do the ANOVA
ANOVA_result <- aov(values ~ ind, data = LongData)

# Show the result of the anova
summary(ANOVA_result)

# plot dianostic plots                                   (https://arc.lib.montana.edu/book/statistics-with-r-textbook/item/57)
plot(ANOVA_result)

# the plots should follow a flat line except the QQ plot




# lav ANOVA og gem resultatet i ANOVA_result
ANOVA_result <- aov(values ~ ind, data = LongData)

# Vis resultat
summary(ANOVA_result)

# vis diagnostiske plot     
plot(ANOVA_result)


# lav en post-hoc analyse med Turky HSD hvis resultatet af ANOVA var signifikant

TukeyHSD(ANOVA_result)
