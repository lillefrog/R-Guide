# Plot a table 
# https://ardata-fr.github.io/flextable-book/index.html
# install.packages("flextable")

# DAta from doi: 10.1111/1467-8624.00146. PMID: 10834466.

Education <- c('< High school graduate','High school graduate' ,'High school graduate +','College graduate','College graduate +')
Boys <- c('87 (8)', '427 (38)', '393 (35)', '164 (14)', '58 (5)')
Girls <- c('83 (8)', '381 (37)', '393 (38)', '134 (14)', '36 (4)')
total <- c('170 (8)', '808 (38)', '786 (36)', '298 (14)', '94 (4)')

myData <- data.frame(Education,Boys,Girls,total) 

# load the library
library(flextable)

# set default settings, this is not usually necessary but can be nice ----
set_flextable_defaults(
  font.size = 10, 
  theme_fun = theme_vanilla,
  padding = 6,
  background.color = "#FFFFFF")


ft <- flextable(myData)

#ft <- theme_vanilla(ft)    # Set the theme

ft <- set_caption(ft, caption = "Mothers level of education n(%)") # add a caption

ft <- add_footer_lines(ft, "Data taken from Feldman et al (2000). doi: 10.1111/1467-8624.00146.")

ft <- autofit(ft)

# plot the table ----
ft


print(ft, preview = "docx") # open the figure in word, often the easiest way to get it


