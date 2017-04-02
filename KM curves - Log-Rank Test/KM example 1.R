## Example 1: 11.2, 14.1+, 17.0, 12.8, 5.3+ -- Calculate KM estimator ##
library("survival", lib.loc="C:/Program Files/R/R-3.2.4/library")
Time<-c(2.3,11.2,12.8,14.1,17)
E<-c(0,1,1,0,1)
Surv<-Surv(Time,E)
## 2.3+ 11.2  12.8  14.1+ 17.0 ##
KM<-survfit(Surv~1)
summary(KM)
plot(KM, main="KM", xlab = "Time", ylab = "S(t)")
