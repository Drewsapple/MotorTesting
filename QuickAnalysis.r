args <- commandArgs(TRUE)
motorSample <- read.csv(args[1]) 

linearModel <- lm( RPM ~ Voltage, data=motorSample)
print(summary(linearModel))
multipleModel <- lm( RPM ~ Voltage + Delta.Voltage, data=motorSample)
print(summary(multipleModel))
inverseMult <- lm( Voltage ~ RPM + RPM.per.s, data=motorSample)
print(summary(inverseMult))
