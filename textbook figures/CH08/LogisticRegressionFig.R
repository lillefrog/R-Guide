# Demo of logistic regression
# 


# png(file = "F02_LogisticRegDemo.png", units="in", width=7, height=4, res=150)

# Generate the dataset
set.seed(41)
N <- 50  #Number of subjects
HeartAttack <- rbinom(N, 1, 0.5) # Did the subject have a heartattack yes=1 No=0
BloodPressure <- rnorm(N, mean = 80, sd = 8) + (20 * HeartAttack) 
OrgData <- data.frame(HeartAttack, BloodPressure) # put the data into a dataframe

# Create a logistic regression model of the data
logistic_model <- glm(HeartAttack ~ BloodPressure, data=OrgData, family=binomial)

# Generate a list of blood pressures we want to predict heart attack from  
PredictedData <- data.frame(BloodPressure=seq(
  60, 120,len=500))

# Predict heartattack for each bloodpressure in the PredictData dataframe 
# and add it to that dataframe
PredictedData$HeartAttack = predict(
  logistic_model, PredictedData, type="response")

# Plot Predicted data and original data points, Notice that we have two 
# different datasets but the variable names are the same. This seems to be required 
# by the predict function 
plot(HeartAttack ~ BloodPressure, data=OrgData, 
     frame = FALSE,
     ylab = "Probabilit of Heart attack",            # X label
     xlab = "Blood pressure (mmHg)",    # y label
     xlim = c(60,120))
lines(HeartAttack ~ BloodPressure, data=PredictedData, lwd=2, col="blue")

summary(logistic_model)

# McFadden's pseudo R squared (I not compleatly confident in this but several sources agree on it)
pR2 = 1 - logistic_model$deviance / logistic_model$null.deviance # pseudo R2



# dev.off()