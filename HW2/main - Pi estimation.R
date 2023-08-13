# HW 2 Pi Estimation
# Sorawis Chongterdtoonskul 65011544

set.seed(544) #set random seed

my.Pi <- function(n) #function named after the subject
{
	x = runif (n, min=0, max=1)	#generate random number between 0 and 1
	y = runif (n, min=0, max=1)	#generate random number between 0 and 1
	r = sqrt((x^2) + (y^2))		#calculate the radius of every points

	num.circle.dots = sum(r<= 1)	#count the number of dots in the circle
	num.square.dots = n			#count the number of dots in the square
	ratio = num.circle.dots/num.square.dots #calculate the ratio

	pi_estimate = 4 * ratio       #calculate the pi estimate
	print("estimated pie is:")   
	print(pi_estimate)			 #print the pi estimate

	print("absolute diff from 3.14159")
	print(abs(pi_estimate - 3.14159)) #print the absolute difference
	
	plot(x, y, col = ifelse(r <= 1, "red", "blue"), asp = 1, pch = 20) 
	print("plot success")
	#plot the points
	#first argument is x coordinate. second argument is y coordinate
	#third argument is color. if r <= 1, then color is red. else, color is blue
}

#my.Pi(500000)
#my.Pi(1000000)
my.Pi(2000000)

