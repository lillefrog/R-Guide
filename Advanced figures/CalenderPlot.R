# Calender plot (example from https://r-coder.com/calendar-plot-r/)
# This is an example on how to plot a calender in R wit some of my own data
# The link has more detailed information about the package

# install.packages("calendR")

library(calendR)


# Set the calender events, it is very important that is has the same length as
# the calender itself or you will get a cryptic error----

events <- rep(NA, 364)

# First part
events[38:51] <- "Begge"
events[52:66] <- "Nina"

# Second part
n1 = 70
n2 = 207
events[seq(n1+0, n2, 7)] <- "Nina"
events[seq(n1+1, n2, 7)] <- "Nina"
events[seq(n1+2, n2, 7)] <- "Nina"
events[seq(n1+3, n2, 7)] <- "Chr"
events[seq(n1+4, n2, 7)] <- "Chr"

# third part
n1 = 210
n2 = 344
events[seq(n1+0, n2, 7)] <- "Nina"
events[seq(n1+1, n2, 7)] <- "Nina"
events[seq(n1+2, n2, 7)] <- "Chr"
events[seq(n1+3, n2, 7)] <- "Chr"
events[seq(n1+4, n2, 7)] <- "Chr"

events[359] <- "Ferie" 

table(events) # summarize the number of events, can be very usefull

# Plot the actual calender with the events colored ----

calendR(start_date = "2022-11-01", # Custom start date
        end_date = "2023-10-30",   # Custom end date (be careful not to choose a invalid date)
        start = "M",               # Start the weeks on Monday
        mbg.col = 4,               # Color of the background of the names of the month
        months.col = "white",      # Color text of the names of the months
        lty = 0,                   # Line type
        bg.col = "#f4f4f4",        # Background color
        special.days = events,
        special.col = c("pink", "lightblue", # Colors must be the same length as types of events
                        "lightgreen", "lightsalmon"),
        legend.pos = "top",
        title = "Barselsplan",  # Title
        title.size = 30,        # Title font size
        pdf = TRUE,             # Save as PDF in working directory
        orientation = "p") 





# # Simple calender example ----
# library(calendR)
# calendR(year = 2022, # Defaults to current year
#         start = "M",
#         special.days = "weekend",
#         special.col = MyColors,
#         legend.pos = "right"
# )



#Errors
# If you get the message "special.days != "weekend" and are using events then you probably have the wrong length of the event vector
