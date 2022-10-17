# simple Bar plot

income = c(100, 120, 400 ,122)
Persons = c('bill','bob','john','Jill')



barplot(income,
        names.arg = Persons,        # names for each bar
        col = 'blue',               # Can have one or many colors eg. blues9
        main = "Income per hour",   # Main title
        ylab = "Income(DK)",        # X label
        xlab = "Person name"        # y label
        )         