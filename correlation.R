#analysis of dataset mtcars using dplyr
#filename :dplyr-mtcars.R

library(dplyr)
?mtcars
mtcars
#structure of data set
str(mtcars)
rownames(mtcars)
row.names(mtcars)
colnames(mtcars)
summary(mtcars)

#summary activities on mt cars
t1=table(mtcars$am)
pie(t1,labels=c('auto','manual'))
t2=table(mtcars$gear)
pie(t2)
barplot(t2, col=c('green','blue','yellow'), vertical=F)

#using dplyr %>% is chaining function
mtcars %>% select(mpg,gear) %>% slice(c(1:5,10))
mtcars %>% arrange(mpg)
mtcars %>% mutate(rn=rownames(mtcars)) %>%select(rn, mpg)
?mutate
?c
mtcars %>% mutate(newmpg=mpg*1.1)
mutate(mtcars, newmpg=mpg*1.1)
mtcars %>% group_by(gear,cyl) %>% summarise(MeanMPG=mean(mpg))



#import / export
dir('./data2')
list.files('./data')
file.exists('./data/mtcars.csv')

#reading from a flat file into a vector
list.files('./data2')
data=scan('./data2/hhe.txt', what='character')
head(data)



#csv read from csv

#first create as csv file from iris data set
head(iris)
write.csv(iris,"./data/iris.csv", row.names =F)
#goto folder data and see iris.csv
read1=read.csv(file="./data/iris.csv", header = T,sep=",")
str(read1); class(read1)



#csv file from web
read_web1=read.csv('http://www.stats.ox.ac.uk/pub/datasets/csb/ch11b.dat')
head(read_web1)
read_web1



#import from google sheets
library(gsheet)
url_gsheet="https://docs.google.com/spreadsheets/d/1QogGSuEab5SZyZIw1Q8h-0yrBNs1Z_eEBJG7oRESW5k/edit#gid=107865534"
df_gsheet = as.data.frame(gsheet2tbl(url_gsheet))






#plot
women
plot(women)
plot(women, type='p', pch=15, col='red')
plot(women, type='l')
plot(women, type='b')
plot(women, type='b', pch=12, lty=2, col=2)
plot(women, xlim=c(30,100), ylim=c(min(women$weight)-10, 200), pch=10)
head(df_gsheet)


library(xlsx)
library(rJava)
df_excel1 = read.xlsx("./data2/myexcel.xlsx", 1)
df_excel1
# read in the worksheet named mysheet
df_excel2a = read.xlsx("./data2/myexcel.xlsx", sheetName = "bowlers")
df_excel2a
df_excel2b = read.xlsx("./data2/myexcel.xlsx", sheetIndex = 2)
df_excel2b



plot(women)
abline(lm(women$weight~women$height),col='red',lty=2)
?abline



plot(mtcars)
boxplot(mtcars$mpg)
?mtcars
pairs(mtcars)
cor(mtcars$hp,mtcars$cyl)
cov(mtcars$hp,mtcars$cyl)





#correlation plot
pairs(women)
cor(women$height,women$weight)
cov(women$height, women$weight)
