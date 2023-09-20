library(survival)

file_path <- "wdata_largest.csv"

data <- read.csv(file_path)

Surv_obj <- Surv(data$wb)

fit <- survreg(Surv_obj ~ 1, dist="weibull")

alpha <- 1/fit$scale
beta <- exp(fit$coefficients)

cat("Alpha (shape parameter): ", alpha, "\n")
cat("Beta (scale parameter): ", beta, "\n")
