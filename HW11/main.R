


diameter <- c(8.24, 8.25, 8.20, 8.23, 8.24 ,8.21, 8.26, 8.26, 8.20, 8.25,8.23, 8.23, 8.19, 8.28, 8.24)


result <- t.test(diameter, mu=8.25,alter="greater")

print(result)