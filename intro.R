#starting to work in R

#assign-----
x1=3
x2<-3
#print values
(x3=3)
#enviornmentt---
#variables in env
ls()
#datasets available for use
data()
women
data(women)
?women
?mtcars
mtcars
attach(mtcars)
mpg
#libraries currently loaded
libary()
#elements
ls()
rm(list=ls())
rm(list=ls(all=TRUE))
x1
data(mtcars)

#help
?mean
x<- c(0:10,50)
xm<-mean(x)
xm
c(xm, mean(x, trim=0.10))
source('test1.R')
