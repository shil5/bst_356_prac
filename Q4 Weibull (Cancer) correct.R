# Q 4. WEIBULL (Cancer)
t<-seq(from=0,to=2000,by=0.01)
a<-2 #(shape)
b<-0.002 #(scale)
p<-dweibull(t,a,1/b)
plot(t,p,xlim=c(0,2000),ylim=c(0,0.002),ylab="PDF: f(x)",
     main="PDF of T~Weibull(a=2,l=500)")
#i) Mean
m1<-sum(t*p);m1
#or
m2<-gamma(1+1/a)/sqrt(b);m2
#ii) HRF
cdf<-pweibull(t,a,1/b)
plot(t,cdf)
hx<-p/(1-cdf)
plot(t,hx)
x<-ans<-NULL
hval<-function(x){   #ASSUMING HR to be in DAYS
  return(b^a*x^(a-1))
}
for(i in 1:3){
  ans<-c(ans,hval(600*i))
};ans
md<-log(2)^(1/a)/b;md