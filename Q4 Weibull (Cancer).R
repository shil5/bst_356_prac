# Q 4. WEIBULL (Cancer)
t<-seq(from=0,to=0.008,by=0.00001)
a<-2 #(shape)
b<-0.002 #(scale)
p<-dweibull(t,a,b)
plot(t,p,xlim=c(0,0.008),ylim=c(0,500))
#i) Mean
m1<-sum(t*p)/100000;m1
#or
m2<-b*gamma(1+1/b);m2
#ii) HRF
cdf<-pweibull(t,a,b)
plot(t,cdf)
hx<-p/(1-cdf)
plot(t,hx)