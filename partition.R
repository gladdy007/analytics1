#create vector of student names: divide into 2 groups
x= paste('student',1:10000,sep='-')
x
(group1=sample(length(x),size=.6*length(x)))
length(group1)
group2=x[-group1]
length(group2)


#create a large df
sname=paste('S',1:1000,sep='-')
gender=sample(x=c('male','female'),size=1000, prob=c(.6,.4),replace=T)
marks=ceiling(rnorm(1000,60,10))
df=data.frame(sname,gender,marks)
length(sname)
head(df)
table(df$gender)
 
#split DF in to 2 parts 70% and 30%
group3=sample(nrow(df),size=.7*nrow(df))
group4=df[-group3,]
nrow(group4)
