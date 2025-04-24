#install.packages('plotly')
library(plotly)

fig <- plot_ly(
  labels = c("Eve", "Cain", "Seth", "Enos", "Noam", "Abel", "Awan", "Enoch", "Azura"),
  parents = c("", "Eve", "Eve", "Seth", "Seth", "Eve", "Eve", "Awan", "Eve"),
  values = c(65, 14, 12, 10, 2, 6, 6, 4, 4),
  type = 'sunburst',
  branchvalues = 'total'
)

fig


library(plotly)

# base month
C1_Lables  = c("2025","Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec")
C1_parents = c("",   "2025",    "2025",    "2025",    "2025",   "2025",    "2025",    "2025",    "2025",   "2025",    "2025",    "2025",    "2025")
C1_values  = c(0,   10,    10,    10,    10,   10,    10,    10,    10,   10,    10,    10,    10)

# Events
C2_Lables = c("Studiestart","Eksamen ")
C2_parents = c("Sept","Aug")
C2_values = c(5,5)


fig <- plot_ly(
  labels = c(C1_Lables,C2_Lables),
  parents = c(C1_parents,C2_parents),
  values = c(C1_values,C2_values),
  type = 'sunburst',
  branchvalues = 'relative',
  sort = FALSE
)

fig