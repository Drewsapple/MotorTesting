args <- commandArgs(TRUE)
motorSample <- read.csv(args[1]) 
png(file = args[2])

plot(x = motorSample$Voltage, y = motorSample$RPM, xlim = c(-12, 12), ylim = c(-6000, 6000))
print(summary(motorSample))

print("Linear Model for free spinning systems")
linearModel <- lm( RPM ~ Voltage, data=motorSample)
print(summary(linearModel))

abline(linearModel, col='red')
dev.off()
png(file = args[3])
plot(y=resid(linearModel), x=motorSample$RPM)
dev.off()

print("Multiple Regression Model for higher inertia systems")
inverseMult <- lm( Voltage ~ RPM + RPM.per.s, data=motorSample)
print(summary(inverseMult))

