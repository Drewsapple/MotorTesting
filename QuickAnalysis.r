args <- commandArgs(TRUE)
motorSample <- read.csv(args[1]) 

print("Linear Model for free spinning systems")
linearModel <- lm( RPM ~ Voltage, data=motorSample)
print(summary(linearModel))

print("Multiple Regression Model for higher inertia systems")
inverseMult <- lm( Voltage ~ RPM + RPM.per.s, data=motorSample)
print(summary(inverseMult))
