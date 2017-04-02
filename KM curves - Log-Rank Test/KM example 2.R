## Example 2: 14.9, 21.7, 7.1+, 18.7+, 19.4+ -- Calculate KM estimator ##
T<-c(7.1,14.9,18.7,19.4,21.1)
E<-c(0,1,1,0,1)
Surv2<-Surv(T,E)
## 7.1+ 14.9  18.7  19.4+ 21.1 ##
KM2<-survfit(Surv2~1)
summary(KM2)
plot(KM2, main="KM2", xlab = "Time", ylab = "S(t)")