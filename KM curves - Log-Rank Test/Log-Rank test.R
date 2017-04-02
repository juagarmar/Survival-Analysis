##Log-Rank test##
T<-c(5.3,7.1,11.2,12.8,14.1,14.9,17.0,18.7,19.4,21.7)
E<-c(0,0,1,1,0,1,1,1,0,1)
example<-c(1,2,1,1,1,2,1,2,2,2)
example3<-data.frame(T,E,example)
survdiff(Surv(T,E)~example, rho=1)
survdiff(Surv(T,E)~example, rho=0.5)
survdiff(Surv(T,E)~example, rho=2)