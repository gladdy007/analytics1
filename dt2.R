library(rpart)
library(rpart.plot)

gender=sample(c('m','f'),size=10000,prob = c(.6,.4),replace = T)
age=ceiling(rnorm(1000,35,5))
buy=sample(c('yes','no'),size = 10000,prob = c(.5,.5),replace = T)
df=data.frame(buy,age,gender)
head(df)

dtree1=rpart(buy~gender+age,data=df,minsplit=10,cp=0.007)
dtree1
dtree1$variavle.importance
rpart.plot(dtree1)
?rnorm
