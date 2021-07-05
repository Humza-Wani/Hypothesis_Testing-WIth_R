fan <- read.csv(file.choose())
View(fan)
#eda
plot(fan)
a <- sum(fan$Weekdays=="Female")
b <- sum(fan$Weekdays=="Male")
a1 <- a/400*100
b1 <- b/400*100
class(a)
pie(c(a,b),col=c("red","green"),labels = c("Females","Males"))
legend("topright",legend = c(a1,b1),fill = c("red","green"))
barplot(c(a,b),col =c("red","green"))
legend("topright",c("Females","Males"),fill = c("red","green"))

 
c <- sum(fan$Weekend=="Female")
d <- sum(fan$Weekend=="Male")
pie(c(c,d),col=c("red","green"),labels = c("Females","Males"))
c1 <- c/400*100
d1 <- d/400*100
legend("topright",legend = c(c1,d1),fill = c("red","green"))  

barplot(c(c,d),col =c("red","green"))
legend("topright",c("Females","Males"),fill = c("red","green"))

t1 <- (table(fan$Weekdays))
t2 <- table(fan$Weekend)
t1
t2

#We proceed with 2-proportion test
#Create hypothesis
#Ho= Proportions of Male and Female are same
#Ha= Proportions of Male and Female are not same
##  2-sample test for equality of proportions with continuity
##  correction
prop
prop.test(fan$Weekdays)

prop.test(fan$Weekdays,fan$Weekend)
res <- prop.test(x = c(287,233), n = c(400, 400))
res

#as p value is  <0.05 we ca ns say Male and female proportions are not same 