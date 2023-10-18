#Sorawis Chongterdtoonskul 65011544
int.est = function(x,conf) # define function name and inputs
{
	area = (conf/100) + ((1-conf/100)/2) # calculate area under the curve of given conf
	se = sd(x)/sqrt(length(x)) # calculate sd of the data
	margin = qt(area,length(x)-1)*se # calculate margin of error (used in t-distribution)
	lower = mean(x) - margin # calculate lower bound
	upper = mean(x) + margin # calculate upper bound

	cat("lower=", lower, "upper=", upper, "\n") # print results
}

score = c(83,73,62,63,71,77,77,59,92) # define 
print("Our Function")
int.est(score, 95) # call function


# My R would not print the result, so I made some changes.

k =  t.test(score)$conf.int  # define function name and inputs
 
cat("Built-in\n"," lower=", k[1], "upper=", k[2]) # print results