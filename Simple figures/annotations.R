## Annotations in figures ----
# When making figure we often want to add some non standard text, here are some examples
# to get you started

# first we make a simple figure to add our annotations too
plot(1:10, main = 'demo figure',
     xlab = 'X-label',
     ylab = 'Y-label')

## ADD SIMPLE TEXT ----
# the primary function used to add text annotations to a figure is text
# It just requires the position where you want to place your text followed by 
# the text
text(5,4,'first annotation')

# As default text is centered on the coordinates selected but you can change that 
# with adj = 0 or adj = 1
text(5,3.5,'adj = 0',adj = 0) # the text starts at the coordinates
text(5,3.0,'adj = 0.5',adj = 0.5) # the text is centered on the coordinates
text(5,2.5,'adj = 1',adj = 1) # the text ends at the coordinates

# it is of course also possible to change the color font and text size 
text(2,8,'fontDemo',
     col = 'red',
     family = 'serif', # this is the font the default options are "serif", "sans" and "mono"
     cex = 2, # this is the text size, 2 is twice the normal size
     font = 4) # this is type of text 1=plain, 2=bold, 3=italic, 4=bold italic, 5=? maybe symbols or greek letters

# you can also insert a text that depends on the result of a calculation
c1 = 2+2
text(2,7,sprintf("r = %.2f", c1),
     col = 'red',
     family = 'serif', # this is the font the default options are "serif", "sans" and "mono"
     cex = 2, # this is the text size, 2 is twice the normal size
     font = 4) # this is type of text 1=plain, 2=bold, 3=italic, 4=bold italic, 5=? maybe symbols or greek letters



# Sometimes you might want to add text outside the plot, this can be done with
# mtext, but be aware that it is easy to place the text completely outside the plot
# so you can't see it
mtext('mtext example', 
      side = 4, # where to place the text 1=bottom, 2=left, 3=top, 4=right
      line = 0, # how close do you want the text to the plot 0 is closest
      at = 1) # This uses the coordinate system of the figure to decide where to start the text


## ADD FORMULA ----
# Mathematical Annotation in R
# You can tell R that a text should be plottet as matematical formula instead of 
# just plain text with the function expression()

text(4,9,expression(underline('math ') * "= sin" * phi * sum(x[i], i==1, n)), col = 'blue')
text(4,8.5,expression(R^2 * ' ' * R[i]), col = 'red')

# find more information about math plotting functions by searching for plotmath in help
# or on this website:
# https://astrostatistics.psu.edu/su07/R/html/grDevices/html/plotmath.html


## ADD ARROWS AND LINES ----
# you can draw a simple arrow
arrows(1,2,2,3, # position of arrow (from 1,2 to 2,3)
       length = 0.2, # size of arrow tip
       angle = 30, # angle of arrow tips
       code = 1, # type of arrow 0=no Tip 1=front 2=back 3=both
       lwd = 2, # line width
       col = 'green') # we can of course also set color

# draw a simple line or series of connected lines
lines(x=c(7,8,9),y=c(2,3,2), # list of x and y coordinates to draw lines between
       lwd = 2, # line width
       col = 'blue') # set color

# You can also just draw a horizontal or vertical line from edge to edge 
abline(h = 4.5,  # draw a horizontal line at 4.5
       v = 3.5,  # draw a vertical line at 3.5 (remowe this line if you only want one line)
       col = "gray60", # set color 
       lty  = 4) # set linetype 0=blank 1=solid 2=dashed 3=dotted 4=dotdash 5=longdash 6=twodash

# Or you can have a line with a specific intercept and slope
abline(2,2, # set intercept and slope 
       col = "green", # set color 
       lty  = 1)


## Add result of calculation and equation to plot ----
c1 = 0.98 # calculated R squared value 
lgnd <- bquote(italic(r)^2 == .(format(c1, digits = 6))) # insert c1 into expression
# plot expression on plot with text function
text(8,6,
     as.expression(lgnd),
     cex = 2)


## FANCY STUFF ----
# If you are really fancy you can plot a linear model directly
# I have commented this out because it opens a new figure but you can just uncomment and run it

# # calculate a model and add it to a figure
# myModel <- lm(dist ~ speed, data = cars) # Use the build in dataset cars
# plot(cars, main = 'Plotting my model') # plot the raw data
# abline(myModel) # plot the line fitted to the data in the model
# 
# # Make a text string with the formula for the line
# myFormula <- paste(                    # paste combines lines of text into one string
#                    myModel$terms[[2]], # get the name of the outcome
#                    ' = ',              # add a equal sign
#                    format(myModel$coefficients[2], digits = 3), # get the slope with 3 digits
#                    ' * ',              # add a multiply sign
#                    myModel$terms[[3]], # get the name of the predictor
#                    ' ',                # add a space
#                    format(myModel$coefficients[1], digits = 3) # get the intercept with 3 digits
#                    )
# 
# text(9, 40, myFormula) # print the formula on the plot







