Lab <-  read.csv(file.choose())
View(Lab)
#EDA on data
mean_lab1 <- mean(Lab$Laboratory.1)
mean_lab2 <- mean(Lab$Laboratory.2)
mean_lab3 <- mean(Lab$Laboratory.3)
mean_lab4 <- mean(Lab$Laboratory.4)


plot(Lab)
scatter.smooth(Lab$Laboratory.1)
scatter.smooth(Lab$Laboratory.2)
lab1 <- as.vector(Lab)
hist(x =lab1$Laboratory.1)
hist(x =lab1$Laboratory.2)
hist(x =lab1$Laboratory.3)
hist(x =lab1$Laboratory.4)
qqnorm(lab1$Laboratory.1)
qqline(lab1$Laboratory.1)
qqnorm(lab1$Laboratory.2)
qqline(lab1$Laboratory.2)
qqnorm(lab1$Laboratory.3)
qqline(lab1$Laboratory.3)
qqnorm(lab1$Laboratory.4)
qqline(lab1$Laboratory.4)

#as we can see data is sapmles are Normally distributed
#varaince test cant be employed beacuse of more than two sets
#ANOVA is a statistical method for determining the existence of differences among several population means.
#This is a test of a joint hypothesis about the equality of several
#opulation parameters.
#The required assumptions of ANOVA:
#1. We assume independent random sampling from each of the  populations.
#2. We assume that the r populations under study are normally distributed,
#with means  that may or may not be equal, but with equal variances
#ho:  same Tat
#h1: different TAT


#correct the data format for aov
x <- 1:480
lab_name <- ifelse(x<=120,"lab1",ifelse(x >120 & x<=240,"lab2",ifelse(x>240& x<=360,"lab3","lab4")))
lab2 <- data_frame("TAT"=c(Lab$Laboratory.1,Lab$Laboratory.2,Lab$Laboratory.3,Lab$Laboratory.4))
lab2$Lab_name <- lab_name
View(lab2)

#employing ANNOVA

?aov()
a <- aov(formula =TAT~Lab_name,data=lab2 )
summary(a)
plot(a)
#as the pr(>F) is less than 0.05
#h0 is accepted no significant difference found.

#If the r population means are different (i.e., at least two of the population
#means are not equal), then the variation of the data points about their
#respective sample means is likely to be small when compared with the
#variation of the r sample means about the grand mean .


