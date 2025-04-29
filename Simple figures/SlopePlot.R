# Slightly advanced slope plot
# Sample data set insert your own data here
myData <- data.frame(
  Name = c("A", "B", "C", "D"),
  Value1 = c(10, 20, 15, 25),
  Value2 = c(15, 18, 22, 20)
)

# Set up the plot window with extra x-margin and no x-axis
plot(c(1, 2),                                # set some default x values to start with
     range(c(myData$Value1, myData$Value2)), # set the y-axis to go from the lowest to the highest value in our data set
     type="n",            # type of points to draw (n=none)
     xaxt="n",            # type of x-axis to draw (n=none)
     xlab="",             # label on the x axis
     ylab="Value",        # label on the y axis 
     main="Slope Plot",   # Main title
     xlim=c(0.5, 2.5),    # Where does the x-axis start and end
     bty="n"              # Draw box around plot (n=none, )
     )

# Add points and lines to the plot
for(i in 1:nrow(myData)) {
  lines(c(1, 2), c(myData$Value1[i], myData$Value2[i]), col="blue") # draw the lines between points
  points(c(1, 2), c(myData$Value1[i], myData$Value2[i]), pch=19)    # draw the points
  # You can remove the next two lines if you don't want to label points
  text(1, myData$Value1[i], labels=myData$Name[i], pos=2)           # label the points on the left side
  text(2, myData$Value2[i], labels=myData$Name[i], pos=4)           # label the points on the right side
}

# Add custom labels instead of axis
text(x=1, y=par("usr")[3] - 1, labels="Before", xpd=NA) # Draw the text under the figure
text(x=2, y=par("usr")[3] - 1, labels="After", xpd=NA)  # xpd=NA allows drawing the text outside the plot region, but still inside the figure region
