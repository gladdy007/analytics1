#data structures in slides

#comtrol+enter when you are in the line to execute
# vectors---
x=1:10
x
x1<-1:20
x1
(x1=1:30)
(x2=c(1,2,13,4,5))
class(x2)

(x3=letters[1:10])
class(x3)
LETTERS[1:26]
(x3b=c('a',"vinay","4"))
class(x3b)

(x4=c(T,FALSE,TRUE,T,F))
class(x4)

x5=c(3L,5L)
class(x5)
x5a=c(3,5)
class(x5a)
(x5b=c(1,"a",T,4L))
class(x5b)

#access elements
(x6=seq(0,100,by=3))
ls() #variables in enviornment
x6
length(x6)
x6[20]
x6[3] #access 3rd element
#[1] 4
x6[c(2,4)] #access 2nd and 4th element
x6[-1]
x6
x6[-c(1:10,15:20)]
x6[c(2, -4)]

#sort , order
set.seed(65)




(m2=matrix(100:111, ncol=3, byrow=T))
x=101:124
length(x)


m2
m2[1,2:3]


paste("c",1:100, sep="-")
(colSums(m2))
rowSums(m2)
sweep(m2, MARGIN=1, STATS=c(2,3,4,5), FUN="+")
?addmargins
addmargins(m2,1,sd)
addmargins(m2,2,mean)
round(addmargins(m2,2,mean))

#data frzame
#create vevtors to be combined into DF
(rollno=1:30)
(sname=paste('student',1:30,sep=''))
(gender=sample(c('M','F'), size=30, replace=T, prob=c(.7,.3)))
(marks=floor(rnorm(30,mean=50,sd=10)))
(marks2=ceiling(rnorm(30,40,5)))
(course=sample(c('BBA','MBA'),size=30, replace=T,prob =c(.5,.5)))
rollno;sname;gender
marks;marks2;course

#create DF
df1=data.frame(rollno,sname,gender,marks,marks2,course,stringsAsFactors = F)
str(df1)
head(df1)

(x=rnorm(100,mean=60, sd=10))
plot(density(x))
abline(v=60, col='red')
trunc(3.4)
round(3.456,2)
signif(3.567334,4)


(x=rnorm(100, mean=60, sd=10))
summary(x)
quantile(x)
quantile(x,seq(0,1,.1))
fivenum(x)
boxplot(x)
hist(x)


aggregate(df1$marks, by=list(df1$gender), FUN=max)


df1
library(dplyr)
df1 %>% group_by(gender) %>% summarise(mean(marks),mean(marks2))
