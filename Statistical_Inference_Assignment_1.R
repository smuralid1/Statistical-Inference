##Investigation of exponential distribution

##Set mean value to be null initially
mns=NULL


##Store the means of 40 exponentials in thousand simulations in the variable mns
for (i in 1 : 1000) mns = c(mns, mean(rexp(40,0.2)))


##This part answers the first question of part 1
## Get the mean of the sample
average<-mean(mns)

##Theoretical mean of the distribution
Theoretical_mean<-1/0.2

# The mean of the distribution of averages of 40 expoenentials simulated over 
# a thousand times is very close to the theoretical mean. This is an important 
# axiom from the Central Limit Theorem



##This part answers the second question of part 1
## Get the variance of the distribution
Variance<-var(mns)

##Theoretical variance of the distributionn
Theoretical_Variance<(1/0.2)^2

# As we are looking at the distribution of the averages simulated over a large
# number of times the variance of the sample greatly reduces as compared to the 
# theoretical variance of the distribution.



##This part answers the third question of part 1

hist(mns)

# From the histogram we observe that the distribution of averages appears 
# like a bell shaped normal distribution with the mean of this distribution
# of averages very close to the theoretical mean of the actual distribution

Median<-median(mns)

# We observe that the median of the distribution is very close the mean of
# the distribution



# From the below 3 steps we see what percentage of the distribution lies within
# (mean + 1 standard deviation),(mean + 1 standard deviations),
# and (mean + 1 standard deviations). If this is a normal distribution 68% of the
# values will lie within (mean + 1 standard deviation), 95% within
# (mean + 2 standard deviations) and 99.7% within (mean + 3 standard deviations)
sum(mns<=(mean(mns)+sd(mns)) & mns>=(mean(mns)-sd(mns)))
#686
sum(mns<=(mean(mns)+sd(mns)*2) & mns>=(mean(mns)-sd(mns)*2))
#952
sum(mns<=(mean(mns)+sd(mns)*3) & mns>=(mean(mns)-sd(mns)*3))
#997


# From the above tests we can safely say that the distribution of averages
# of 40 exponential distributions simulated a thousand times is a normal
# distribution.
