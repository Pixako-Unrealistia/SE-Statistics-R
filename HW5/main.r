library(stats) # For pnorm, pexp, plnorm, pweibull, pbeta

# Question 6
shape_param <- 1 
scale_param <- 300 
time_threshold <- 4 * 60  # Convert minutes to seconds
prob_above_threshold_q6 <- 1 - pweibull(time_threshold, shape = shape_param, scale = scale_param)
cat("Probability that a Web user spends more than four minutes on the Web page:", prob_above_threshold_q6, "\n")

# Question 7
alpha_q7 <- 2
beta_q7 <- 3
time_threshold_q7 <- 2 * 24  # Convert days to hours
prop_above_threshold_q7 <- 1 - pbeta(time_threshold_q7 / 24 / 2.5, shape1 = alpha_q7, shape2 = beta_q7)
cat("Probability that the task requires more than two days to complete:", prop_above_threshold_q7, "\n")

# Question 8
mean_lifetime_q8 <- 6
time_owned_q8 <- 3
prob_fail_q8 <- pexp(time_owned_q8, rate = 1 / mean_lifetime_q8)
cat("Probability that the CPU fails in the next three years:", prob_fail_q8, "\n")

# Question 9
mean_life_q9 <- 7000
std_dev_q9 <- 600
time_threshold_q9 <- 5800
prob_fail_q9 <- pnorm(time_threshold_q9, mean = mean_life_q9, sd = std_dev_q9)
cat("Probability that a laser fails before 5800 hours:", prob_fail_q9, "\n")

# Question 10	
theta_q10 <- 0.5 
omega_q10 <- 1
time_threshold_q10 <- 10
prob_above_threshold_q10 <- 1 - plnorm(time_threshold_q10, mean = theta, sd = omega)
cat("Probability that a page is viewed for more than 10 seconds:", prob_above_threshold_q10, "\n")
