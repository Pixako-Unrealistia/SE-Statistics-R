# HW 1 Empirical Probability
# Sorawis Chongterdtoonskul 65011544

options(scipen=20) #prevent console from printing in scientific notations.

roll.die <- function(n) # assigning following function to roll.die
{
  set.seed(544)   # set random seed for pseudo random.
  
  die <- c(1,2,3,4,5,6) # create vector of possible value of die faces
  
  results <- sample(die, size=n, replace=TRUE) #generate a vector of random values selected on die based on seed
  
  get5 <- sum(results==5) #get the amount of times the die landed on 5 (From the results)
  
  prob5 <- get5/n #divide the amount of times that the die landed on 5 with sample size
  
  different <- abs(prob5-(1/6)) #Calculate the difference between ideal probability (1/5) and actual probability
  
  cat ("rolling =", n,"\n", "Probability of getting 5 =", prob5,"\n") #printing the amount of rolls and probability
  
  cat("Difference =", different, "\n\n") #printing difference
}

  roll.die(1000) #execution the function with n = 1000, namely randoming that amount of times
  roll.die(100000) #execution the function with n = 1000, namely randoming that amount of times
  roll.die(1000000) #execution the function with n = 1000, namely randoming that amount of times