# HW 4 Empirical Rule
# Sorawis Chongterdtoonskul 65011544

empirical_rule <- function(mu, sigma) {
  X <- rnorm(10000000, mu, sigma)
  #generate 10,000,000 random numbers from normal distribution with mean mu and standard deviation sigma

  within_1sd <- sum(X > (mu - sigma) & X < (mu + sigma)) / length(X)
  # count the number of X that are within 1 standard deviation of mu
  within_2sd <- sum(X > (mu - 2 * sigma) & X < (mu + 2 * sigma)) / length(X)
  # count the number of X that are within 2 standard deviations of mu
  within_3sd <- sum(X > (mu - 3 * sigma) & X < (mu + 3 * sigma)) / length(X)
  # count the number of X that are within 3 standard deviations of mu
  c(within_1sd, within_2sd, within_3sd)
  # return vector of proportions asked for in the subject
}

k = empirical_rule(0, 1)
print("mean = 0, sd = 1")
cat( " Under 0.68 : ", k[1], "\n",
	 "Under 0.95 : ", k[2], "\n",
	 "Under 0.997 : ", k[3], "\n"
)

k = empirical_rule(11, 3)
print ("mean = 11, sd = 3")
cat( " Under 0.68 : ", k[1], "\n",
	 "Under 0.95 : ", k[2], "\n",
	 "Under 0.997 : ", k[3], "\n"
)

print ("mean = 4, sd = 13")
k = empirical_rule(4, 13)
cat( " Under 0.68 : ", k[1], "\n",
	 "Under 0.95 : ", k[2], "\n",
	 "Under 0.997 : ", k[3], "\n"
)