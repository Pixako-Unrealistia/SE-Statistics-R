# HW6 Sorawis Chongterdtoonskul 65011544

# Define function with error handling :>
find_mean_variance <- function(x, Joint) {
    # Check if inputs are valid
    if (x < 1 || x > ncol(Joint)) {
        stop("x must be within the range of the columns of Joint")
    }
    if (any(Joint < 0) || abs(sum(Joint) - 1) > 1e-6) {
        stop("Joint must be a valid probability density function")
    }
    # Assign the value of y
    y <- c(1, 2, 3, 4)
    # Marginal joint probability density function fX(x) = sum(fXY(x,y))
    marginal_pdf <- apply(Joint, 2, sum)
    # Conditional probability density function fY|X(y|x) = fXY(x,y) / fX(x)
    conditional_pdf <- Joint[, x] / marginal_pdf[x]
    # Calculate mean
    mean <- sum(y * conditional_pdf)
    # Calculate variance
    var <- sum((y - mean)^2 * conditional_pdf)
    # Return mean and variance as a list
    return(list(mean = mean, variance = var))
}

# Test cases
Joint <- matrix(c(0.01, 0.02, 0.25, 0.02, 0.03, 0.2, 0.02, 0.1, 0.05, 0.15, 0.1, 0.05), nrow = 4, ncol = 3, byrow = TRUE)
result1 <- find_mean_variance(1, Joint)
cat("E(Y|X = 1) =", result1$mean, "\n")
cat("V(Y|X = 1) =", result1$variance, "\n")
result2 <- find_mean_variance(2, Joint)
cat("E(Y|X = 2) =", result2$mean, "\n")
cat("V(Y|X = 2) =", result2$variance, "\n")
result3 <- find_mean_variance(3, Joint)
cat("E(Y|X = 3) =", result3$mean, "\n")
cat("V(Y|X = 3) =", result3$variance, "\n")

