
# Load the dataset toothgrowth
library("datasets", lib.loc="C:/Program Files/R/R-3.2.0/library")
data("ToothGrowth")
ToothGrowth

# The following steps perform basic exploratory data analysis
# Visual check the data once
ToothGrowth

# Seperate the dataset into 2 datasets one each for Vitamin C and for Orange juice
ToothGrowth_VC<-ToothGrowth_1[ToothGrowth_1$supp=='VC',]
ToothGrowth_OJ<-ToothGrowth_1[ToothGrowth_1$supp=='OJ',]

# Plot the datasets to see how data looks like for each supplement and dosage.
plot(ToothGrowth_VC$dose,ToothGrowth_VC$len,main='Vitamin C effect on tooth growth',
     xlab='Dose',ylab='Length')

plot(ToothGrowth_OJ$dose,ToothGrowth_OJ$len,main='Orange Juice effect on tooth 
     growth',xlab='Dose',ylab='Length')

# Split the dataset based on the dosage
ToothGrowth_0.5<-ToothGrowth[ToothGrowth$dose==0.5,]
ToothGrowth_1.0<-ToothGrowth[ToothGrowth$dose==1.0,]
ToothGrowth_2.0<-ToothGrowth[ToothGrowth$dose==2.0,]

# Perform the t test to determine the mean length of tooth growth based on
# supplements for all the different doses.
t.test(len~supp,paired=FALSE,var.equal=FALSE,data=ToothGrowth_0.5)
t.test(len~supp,paired=FALSE,var.equal=FALSE,data=ToothGrowth_1.0)
t.test(len~supp,paired=FALSE,var.equal=FALSE,data=ToothGrowth_2.0)


