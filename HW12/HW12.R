# Sorawis Chongterdtoonskul 65011544

x.bar = 0 #initilise x.bar to 0

popu.x <- rchisq(n=700, df=4) #generate 700 pop with 4 degrees of freedom

for (i in 1:3000)
{
	samp.x = sample(popu.x, size = 80, replace=TRUE)
	x.bar[i] = mean(samp.x)
}
# loops 3000 times, each loop takes sample size of 80 from the pop with replacement then calculate the mean of sample and store it in x.bar


#population distribution
hist(popu.x) # plots histogram of the population distribution


#sample distribution
hist(x.bar) # plots histogram of the sample distribution

#rule 1 proof

# mean of sample distribution is equal to mean of population distribution
print ("mean of x.bar")

cat("x.bar = " ,  mean(x.bar), "\n")
cat ("popu.x = ", mean(popu.x), "\n")

#rule 2 proof

print ("standard deviation of x.bar")
# standard deviation of sample distribution is equal to standard deviation of population distribution divided by square root of sample size

cat("x.bar = " ,  sd(x.bar), "\n")
cat ("popu.x = ", sd(popu.x)/sqrt(80), "\n")


# verification
tolerance <- 1e-2 # 10^-2 percision

if (abs(mean(x.bar) - mean(popu.x)) < tolerance) {
	print("Rule 1 is true")
} else {
	print("Rule 1 is false")
}

if (abs(sd(x.bar) - sd(popu.x)/sqrt(80)) < tolerance) {
	print("Rule 2 is true")
} else {
	print("Rule 2 is false")
}
