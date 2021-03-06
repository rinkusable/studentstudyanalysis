#**********project: analysis of students subject understanding***********

#rinku sable
#26132 sy cse B
f1<-read.csv("D:/IV sem/R/R project/survey1.csv")

c<-head(f1)
c
ncol(f1)  #defines no. of columns
nrow(f1)  #defines no. of rows
dim(f1)   #shows the dimensions 

#attributes present in the dataset
a=attributes(f1)
a
#types of attributes
str(f1)  #tells the types of attributes
#summery
summary(f1)  
#some graphs for visualization
#students no of study hours count
#install.packages(ggplot)  #using ggplot function for visualization
?install.packages           
packageVersion("ggplot2")
library(ggplot2) #importing the library
#analysis of network connectivity data of students
fr1<-data.frame(f1$connectivity)
fr1
is.integer(fr1)
as.integer(fr1)
table(f1$connectivity)
print('B=best, I=interrupting, W=worst ')
plot1 <- ggplot(f1, aes(x=connectivity,)) + geom_bar(fill='red') + labs(title="network connectivity") 
print(plot1)
#data of area of living of the students
fr2<-data.frame(f1$living)
fr2
table(fr2)

plot2<-ggplot(f1,aes(x=living))+geom_bar(fill='navyblue') +labs(title = "area of living")
print(plot2)
# gender ratio 
fr3<-data.frame(f1$gender)
fr3
table(fr3)
plot3<-ggplot(data = f1,aes(x=gender))+geom_bar(fill='pink')+labs(title="gender")
print(plot3)
#analysis of study hours
x<-f1$D_study_hr
table(f1$D_study_hr)
var(f1$D_study_hr)
hist(f1$D_study_hr)
counts <- table(f1$D_study_hr)
barplot(counts, main="time distribution", horiz=TRUE)

#daa subject understanding analysis
fr4<-data.frame(f1$DAA_U_level)
fr4
table(fr4)
plot4<-ggplot(data=f1,aes(x=DAA_U_level))+geom_bar(fill='gray')+labs(title="DAA understanding level")
print(plot4)
#daa subject understanding basis of students
fr5<-data.frame(f1$DAA_U_basis)
fr5
table(fr5)
plot5<-ggplot(f1,aes(x=DAA_U_basis))+geom_bar(fill='navyblue')+labs(title="daa understading basis")
print(plot5)
#os understanding level
fr6<-data.frame(f1$OS_U_level)
fr6
table(fr6)
plot6<-ggplot(f1,aes(x=OS_U_level))+geom_bar(fill='yellow')+labs(title = "operating system understanding level")
print(plot6)
#os understanding basis
fr7<-data.frame(f1$OS_U_basis)
fr7
table(fr7)
plot7<-ggplot(f1,aes(x=OS_U_basis))+geom_bar(fill='green')+labs(title = "operating system undestanding basis")
print(plot7)
#pns subject understanding level
fr8<-data.frame(f1$PnS_U_level)
fr8
table(fr8)
plot8<-ggplot(f1,aes(x=PnS_U_level))+geom_bar(fill='gray')+labs(title = "pns subject understanding level")
print(plot8)
#pns subject understanding basis
fr9<-data.frame(f1$PnS_U_basis)
fr9
table(fr9)
plot9<-ggplot(f1,aes(x=PnS_U_basis))+geom_bar(fill='navyblue')+labs(title = "PnS understanding basis")
print(plot9)
#R understanding level
fr10<-data.frame(f1$R_U_level)
fr10
table(fr10)
plot10<-ggplot(f1, aes(x=R_U_level))+geom_bar(fill='pink')+labs(title = "R understanding level")
print(plot10)
#R understanding basis
fr11<-data.frame(f1$R_U_basis)
fr11
table(fr11)
plot12<-ggplot(f1,aes(x=R_U_basis))+geom_bar(fill='orange')+labs(title = "R understanding basis")
print(plot12)
# PDE understanding level
fr13<-data.frame(f1$PDE_U_level)
fr13
table(fr13)
plot13<-ggplot(f1,aes(x=PDE_U_level))+geom_bar(fill='green')+labs(title = "pde understanding level")
print(plot13)
# PDE understanding basis
fr14<-data.frame(f1$R_U_basis)
fr14
table(fr14)
plot14<-ggplot(f1,aes(x=PDE_U_basis))+geom_bar( fill='purple')+labs(title = "pde understanding basis")
print(plot14)
#comparison
counts <- table( f1$DAA_U_basis, f1$PnS_U_basis)
counts
barplot(counts, main="daa understanding level by basis",
        xlab="study basis", col=c("darkblue","red","yellow","brown"))
        


