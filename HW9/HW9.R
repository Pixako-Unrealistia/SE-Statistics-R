wb<-rweibull(n=400000,shape=9,scale=5)

write.csv(data.frame(wb),file="./wdata_largest.csv")