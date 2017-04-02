## Example 1+2: 11.2, 14.1+, 17.0, 12.8, 5.3+, 14.9, 21.7, 7.1+, 18.7+, 19.4+  -- Calculate KM estimator ##
T<-c(5.3,7.1,11.2,12.8,14.1,14.9,17.0,18.7,19.4,21.7)
E<-c(0,0,1,1,0,1,1,1,0,1)
example<-c(1,2,1,1,1,2,1,2,2,2)
example3<-data.frame(T,E,example)
Surv3<-Surv(T,E)
Surv3
KM3<-survfit(Surv3~1)
plot(KM3, main="example 1 + 2", xlab = "Time", ylab = "S(t)")
KM1and2<- survfit((Surv(T,E) ~ example))
summary(KM1and2)
plot(KM1and2,main="Examples 1 and 2", xlab = "Time", ylab = "S(t)", col=c("blue","red"))