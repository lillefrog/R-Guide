# simple Bar plot

income = c(100, 120, 400 ,122)
Persons = c('bill','bob','john','Jill')



barplot(income,
        names.arg = Persons,
        col = 'blue',
        main = "Income per hour", 
        ylab = "Income(USD)", 
        xlab = "Person name")