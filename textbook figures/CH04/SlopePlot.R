# Slope plot demo for chapter 4 figures
# Data extracted on 16/08/2024 11:47:22 from [ESTAT]
# Gross and net production of electricity and derived heat by type of plant and operator [nrg_ind_peh__custom_12595002]



myData <- data.frame(
  Name = c("Combustible fuels", "Hydro", "Wind", "Solar", "Nuclear fuels and other fuels n.e.c.", "other"),   # Name of each data point
  year2012 = c(1397615,353429,184181,69337 ,772023,5007+5463)/1000,     # First set of values (often the before values)
  year2022 = c(1186089,303165,415577,207593,577979,5473+5939)/1000      # second set of values (often the after values)
)

png(file = "CH4_slopePlot.png", units="in", width=11, height=7, res=150)

# Set up the plot window with extra x-margin and no x-axis
plot(c(1, 2),                                # set some default x values to start with
     range(c(myData$year2012, myData$year2022)), # set the y-axis to go from the lowest to the highest value in our data set
     type="n",            # type of points to draw (n=none)
     xaxt="n",            # type of x-axis to draw (n=none)
     xlab="",             # label on the x axis
     ylab="Terawatt hours produced",        # label on the y axis 
     main="EU electricitry production by source in 2012 and 2022",   # Main title
     xlim=c(0.5, 2.5),    # Where does the x-axis start and end
     bty="n"              # Draw box around plot (n=none, )
     )

# Add points and lines to the plot
for(i in 1:nrow(myData)) {
  lines(c(1, 2), c(myData$year2012[i], myData$year2022[i]), col="blue") # draw the lines between points
  points(c(1, 2), c(myData$year2012[i], myData$year2022[i]), pch=19)    # draw the points
  # You can remove the next two lines if you don't want to label points
  text(1, myData$year2012[i], labels=myData$Name[i], pos=2)           # label the points on the left side
  text(2, myData$year2022[i], labels=myData$Name[i], pos=4)           # label the points on the right side
}

# Add custom labels instead of axis
text(x=1, y=par("usr")[3] - 50, labels="2012", cex=1.5, xpd=NA) # Draw the text under the figure
text(x=2, y=par("usr")[3] - 50, labels="2022", cex=1.5, xpd=NA)  # xpd=NA allows drawing the text outside the plot region, but still inside the figure region

dev.off()



