args <- commandArgs(TRUE)
motorSample <- read.csv(args[1]) 

linearModel <- lm( RPM ~ Voltage, data=motorSample)
print("Linear Model for free spinning systems")
print(summary(linearModel))
inverseMult <- lm( Voltage ~ RPM + RPM.per.s, data=motorSample)
print("Multiple Regression Model for higher inertia systems")
print(summary(inverseMult))
