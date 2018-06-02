args <- commandArgs(TRUE)
motorSample <- read.csv(args[1]) 

png(file = args[2])
plot(x = motorSample$Voltage, y = motorSample$RPM, xlim = c(-12, 12), ylim = c(-6000, 6000))
dev.off()
