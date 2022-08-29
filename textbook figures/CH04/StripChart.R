# Strip Chart ----

# Data fra Danmarks statestik "Voldsforbrydelser i alt" fra 2007 - 2022 Data er kun fra første kvartal
# Data on violent crime in Denmark. Data is only for first quarter of each year
year	<- c(2007,	2008,	2009,	2010,	2011,	2012,	2013,	2014,	2015,	2016,	2017,	2018,	2019,	2020,	2021,	2022)
Hovedstaden	<- c(1604,	1422,	1337,	1311,	1147,	1159,	1047,	1381,	1276,	1582,	1686,	1922,	2192,	2020,	2053,	2144)
Sjaelland	<- c(639,	566,	568,	568,	514,	543,	490,	503,	508,	686,	767,	761,	968,	969,	785,	972)
Syddanmark	<- c(1071,	960,	1026,	1038,	956,	1013,	833,	843,	807,	1061,	1171,	1225,	1304,	1282,	1215,	1491)
Midtjylland	<- c(840,	905,	901,	901,	921,	875,	764,	769,	834,	952,	1227,	1212,	1295,	1306,	1126,	1149)
Nordjylland	<- c(399,	384,	354,	382,	331,	419,	340,	317,	357,	366,	469,	436,	432,	493,	345,	534)

stripdata <- data.frame(Hovedstaden, Sjaelland, Syddanmark, Midtjylland, Nordjylland)

stripchart(stripdata, pch = 21, 
           method = "jitter", 
           jitter = 0.05, 
           frame = FALSE, 
           vertical = TRUE, 
           main = "Violent crime registerede in Q1 2007-2022",
           ylab = "Events", 
           xlab = "Area")
