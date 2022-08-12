# Line plot ----

# Data from danmarks statestik
year	<- c(2007,	2008,	2009,	2010,	2011,	2012,	2013,	2014,	2015,	2016,	2017,	2018,	2019,	2020,	2021,	2022)
Hovedstaden	<- c(1604,	1422,	1337,	1311,	1147,	1159,	1047,	1381,	1276,	1582,	1686,	1922,	2192,	2020,	2053,	2144)
Sjaelland	<- c(639,	566,	568,	568,	514,	543,	490,	503,	508,	686,	767,	761,	968,	969,	785,	972)
Syddanmark	<- c(1071,	960,	1026,	1038,	956,	1013,	833,	843,	807,	1061,	1171,	1225,	1304,	1282,	1215,	1491)
Midtjylland	<- c(840,	905,	901,	901,	921,	875,	764,	769,	834,	952,	1227,	1212,	1295,	1306,	1126,	1149)
Nordjylland	<- c(399,	384,	354,	382,	331,	419,	340,	317,	357,	366,	469,	436,	432,	493,	345,	534)

# The first line has to use plot to make the figure, this also has the settings for the figure
plot(year, Hovedstaden, type = "b", frame = FALSE, pch = 19, col = "red", xlab = "Year", ylab = "Violent crime Q1", ylim=c(1,3000),xlim=c(2006,2022))

# Add a more lines
lines(year, Sjaelland, pch = 18, col = "blue", type = "b", lty = 2)
lines(year, Syddanmark, pch = 17, col = "magenta", type = "b", lty = 3)
lines(year, Midtjylland, pch = 16, col = "black", type = "b", lty = 4)
lines(year, Nordjylland, pch = 15, col = "green", type = "b", lty = 5)


# Add a legend to the plot
legend("topleft", legend=c("Hovedstaden", "Sjaelland","Syddanmark", "Midtjylland","Nordjylland"), col=c("red", "blue","yellow","black","green"), lty = 1:5, cex=0.8)
