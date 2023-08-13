# HW 3 Probability Distribution
# Sorawis Chongterdtoonskul 65011544

colors <- c("red", "orange", "yellow", "green", "blue", "purple")
# for colorfulness :D

# Q1 
# Finding Mass probabilities of all outcomes using dbinom()
n <- 4		# number of bits
p <- 0.10	# probability of error
x <- 0:4	# number of errors
print("Q1")
print(dbinom(x, n, p)) # probabilities of all outcomes
# first argument is the number of errors.
# second argument is the number of bits.
# third argument is the probability of error

# Q2
# Finding Mean and variance of the distribution using rbinom()
sets <- 100000  # number of sets of 4 bits
errors <- rbinom(sets, n, p)  # number of errors in each set
# first argument is the number of sets.
# second argument is the number of bits.
# third argument is the probability of error
print("Q2")
print(mean(errors))		
print(var(errors))

# Q3
# Probability that the most errors is 3 using pbinom()
print("Q3")
print(pbinom(3, n, p)) # probability that the most errors is 3
# first argument is the number of errors. 
# second argument is the number of bits. 
# third argument is the probability of error

# Q4 
# Probability distribution using barplot()
barplot(dbinom(x, n, p), names.arg = x, xlab = "Number of Errors", ylab = "Probability", main = "Probability Distribution", col = sample(colors, 5))
# plot the probabilities
# first argument is the probabilities
# second argument is the names of the bars
# third argument is the x label
# fourth argument is the y label
# fifth argument is the title
# sixth argument is the color of the bars

