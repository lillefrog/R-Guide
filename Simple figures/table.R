# Plot a table 
# https://ardata-fr.github.io/flextable-book/index.html
# install.packages("flextable")

# prepare a data set ----
year	<- c(2007,	2008,	2009,	2010,	2011,	2012,	2013,	2014,	2015,	2016,	2017,	2018,	2019,	2020,	2021,	2022)
Hovedstaden	<- c(1604,	1422,	1337,	1311,	1147,	1159,	1047,	1381,	1276,	1582,	1686,	1922,	2192,	2020,	2053,	2144)
Sjaelland	<- c(639,	566,	568,	568,	514,	543,	490,	503,	508,	686,	767,	761,	968,	969,	785,	972)
Syddanmark	<- c(1071,	960,	1026,	1038,	956,	1013,	833,	843,	807,	1061,	1171,	1225,	1304,	1282,	1215,	1491)
Midtjylland	<- c(840,	905,	901,	901,	921,	875,	764,	769,	834,	952,	1227,	1212,	1295,	1306,	1126,	1149)
Nordjylland	<- c(399,	384,	354,	382,	331,	419,	340,	317,	357,	366,	469,	436,	432,	493,	345,	534)
stripdata <- data.frame(year,Hovedstaden, Sjaelland, Syddanmark, Midtjylland, Nordjylland)

# load the library
library(flextable)

# set default settings, this is not usually necessary but can be nice ----
set_flextable_defaults(
  font.size = 10, 
  theme_fun = theme_vanilla,
  padding = 6,
  background.color = "#FFFFEF")

# Make the actual table ----
ft <- flextable(stripdata) # make the main table
ft <- add_header_row(ft,   # make a header
                     colwidths = c(4, 2),
                     values = c("Air quality", "Time"))

ft <- theme_vanilla(ft)    # Set the theme

ft <- set_caption(ft, caption = "New York Air Quality Measurements") # add a caption

ft <- color(ft, ~ year > 2020, ~ Hovedstaden, color = "orange" ) # color hovedstaden for year > 2020
ft <- color(ft, ~ Sjaelland > 600, ~ Sjaelland, color = "blue" ) # color values for Sjalland > 600

ft <- bold(ft, j = c("year"), bold = TRUE) # make one column of the text bold

ft <- bold(ft, i = 2:4, j = c("Nordjylland"), bold = TRUE) # make part of a column bold

border <- officer::fp_border(color = "black", style = "solid", width = 1) # define a type of line

ft <- vline(ft, j = c('year'), border = border, part = "body") # plot a line after year. part = ('all', 'body', 'header', 'footer')

# plot the table ----
ft

