#simple linear regression -women
#save slr-women.R
women
head(women)
cor(women)
?head
cov(women$height,women$weight)
cor(women$height,women$weight)
pairs(women)
 fit1=lm(weight~height,data=women)
summary(fit1) 


#Ho: (F Test) : No relationship between Y and any X
#Ha:  There is relationship between Y and at least one X
# p < 0.05 Reject Ho in favour of Ha

attributes(fit1)  #output of model

#coefficients
coef(fit1)
#p values for b0 & b1 are significant as it is < 0.05
#pvalue1 = 1.71e-09 < 0.05
#pvalue2 = 1.09e-14 < 0.05

coef(fit1)
#Y = -87 + 3.4 * X  # no extrapolations
(Y = -87 + 3.4 * 20)  # weight cannot be negative
range(women$height)
(Y = -87 + 3.4 * 58)
(Y = -87 + 3.4 * 61.5)
(Y = -87 + 3.4 * 72)
range(women$height)
women


fit1=lm(height~weight, data=women)
#predict for wt=60 and 70
(new=data.frame(weight=c(120,130)))
(p1=predict(fit1, newdata = new))
cbind(new, p1)
summary(fit1)


names(mtcars)
fit2=lm


#one by one


#omni2=read.csv(file.choose())
omni2a =read.csv('./data/salesqty')
head(omni2a)

library(gsheet)
url = "https://docs.google.com/spreadsheets/d/1h7HU0X_Q4T5h5D1Q36qoK40Tplz94x_HZYHOJJC_edU/edit#gid=1595306231"
omni3 = as.data.frame(gsheet::gsheet2tbl(url))
head(omni3)
#Make one of data frames active
omni = omni2a
head(omni)
str(omni)
nrow(omni)
summary(omni)



par()




