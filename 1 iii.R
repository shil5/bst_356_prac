# WEIBULL DISTN
l<-pi;k<-1
x<-seq(0,50,0.1);x
y<-exp(-(x/l)^k);y
# S.F.
plot(x,y)

# HAZARD FUNCTION
hx<-(k/l)*(x/l)^(k-1);hx
plot(x,hx)

# CUMULATIVE HAZARD FUNCTION
Hx<-(k/(k+1))*(x/k)^k;Hx
plot(x,Hx)
#plot.window(asp=1)

# MEAN RESIDUAL LINE
mu<-l/factorial(k);mu
plot(x,x-mu)

# QUANTILES
plot(c(1:5),quantile(rweibull(1001,k,l)),pch=16)