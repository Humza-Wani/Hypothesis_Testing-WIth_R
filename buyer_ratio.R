data1 <- read.csv(file.choose())
View(data1)
#EDA on data
plot(data1)
class(data1)
data2 <- as.matrix(data1)
View(data2)
barplot(data2,col = c('red','green'))
legend("topleft",c("Males","Females"),fill = c("red","green"))

#prop.test can be used for testing the null that 
#the proportions (probabilities of success) in several groups are the same, or that they equal certain given values.

#ho is : All proportions are equal
#h1: All proportions are not equal

#cleasing data for prop test
East_males=data1[1,2]
East_females=data1[2,2]
west_males=data1[1,3]
west_females=data1[2,3]
north_males=data1[1,4]
north_females=data1[2,4]
south_males=data1[1,5]
south_females=data1[2,5]
class(south_females)
#Employing prop.test for east region

a <- chisq.test(c(East_males,East_females))

#Employing prop.test for west region
b <- chisq.test(c(west_males,west_females))

#Employing prop.test for north region
c <- chisq.test(c(north_males,north_females))

#Employing prop.test for south region
d <- chisq.test(c(south_males,south_females))

#as we can see p-value in all tests is less than 0.05
#hence we say there is difference in the proportion
chisq. test(x)
p_val <- data.frame(a$p.value,b$p.value,c$p.value,d$p.value)
p_val


#as we can see all p-values are smaller than 0.05  Hence h0 is rejected