# Sorawis Chongterdtoonskul
# Due to my rich background of dying in the exam room since grade 7
# I expect to score around 50%, no matter how hard your exam might be ;-;


# Declaring my mean!
my_mean <- function(data) 
{
	n <- length(data)  # At first I forgot about this built in so I tried to iterate
	probably_mean <- 0 # I'm not sure what the mean is so I'll start at 0
	while (TRUE)
	{
		diffs <- data - probably_mean # Difference between each data point and the mean
		if (sum(diffs) == 0)
		{
			return(round(probably_mean, 2)) # Rounded to two point percision
		}
		probably_mean <- probably_mean + 0.01  # Increment by 0.01
	}
}


# TEST AREA

data <- c(4.9, 6.8, 1.3, 7.4, 2.5)
cat ("My mean is: " , my_mean(data), "\n")

# Compare with built in mean
cat ("Built in mean is: ", mean(data), "\n")

data <- c(1, 2, 2, 2, 5, 6)
cat ("My mean is: " , my_mean(data), "\n")

# Compare with built in mean
cat ("Built in mean is: ", mean(data), "\n")