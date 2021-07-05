data1 <- read.csv(file.choose())
View(data1)
cutlet <- as.data.frame(data1)
colnames(cutlet) <- c("unitA","unitB")
cutlet
View(cutlet)
class(cutlet)

plot(cutlet)

qqnorm(cutlet$unitA)
qqline(cutlet$unitA)

qqnorm(cutlet$unitB)
qqline(cutlet$unitB)
#both are normal
#variance test
var.test(cutlet$unitA,cutlet$unitB)
#p>0.05 var is equal
#h0 is no diiference in  the means of diameter of cutlets
#2 sapmple t test for equal variance
t.test(cutlet$unitA,cutlet$unitB,alternative = "two.sided",conf.level = 0.95,var.equal = T)

#as p>0.05 we can say that the two units A and B dont have any signficant difference in the diameters
