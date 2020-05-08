            # Q1.i) EXP DISTN
x<-seq(0,5,0.1);x
for(i in 1:5){
	t<-i
	y<-exp(-t*x);y
# S.F.
plot(x,y,type="p")
# HAZARD FUNCTION
plot(x,x*t)
plot.window(asp==1)
# CUMULATIVE HAZARD FUNCTION
}

            # ALT 2
#EXPON DISTN
x<-seq(0,20,0.1);x
n<-length(x)
y<-exp(-2*x);y

# S.F.
plot(x,y)

# HAZARD FUNCTION
t<-c(2)
for(i in 1:(n-1)){
  t<-c(t,2)}
plot(x,t)

# CUMULATIVE HAZARD FUNCTION
z<-2*x
plot(x,z)
#plot.window(asp=1)

# MEAN RESIDUAL LINE
mu<-0.5
plot(x,x-mu)

#QUANTILES
plot(c(1:5),quantile(rexp(1001,2)),pch=16)


          # ALT 3 (BEST)
theta<-2
x<-seq(from=0,to=10,by=0.1)
pdf<-dexp(x,rate=theta)
  #plot(x,pdf,pch=20,main="PDF of Exp")

cdf<-pexp(x,rate=theta) #lower.tail=TRUE means P(X<=x)(default)
  #plot(x,cdf,pch=20,main="CDF of Exp")
sf<-1-cdf
plot(x,sf,pch=20,main="SF of EXP",ylab="SF: S(x)")

p<-seq(0,1,0.01) #Prob seq
quan<-qexp(p,rate=theta)
plot(x,quan,pch=20,main="Quantiles of EXP",ylab="Qi's")

hx<-(pdf/sf)  #HAZARD FN
plot(x,hx,pch=20,main="Hazard Fn of Exp",ylab="HF: h(x)",ylim=c(0,4)) # !!! DOUBT ylab problem: 222222

integrand<-function(x){theta*x^0}  # !!!DOUBT for function
Hx<-c()
for(i in 1:101){
  objj<-integrate(integrand,lower=0,upper=x[i]) #unlist() or str() not reqd. over integrate
  Hx<-c(Hx,objj$value)
}
plot(x,Hx,pch=20,main="Cumulative Hazard Fn of Exp",ylab="CHF: H(x)") #axes=FALSE, ylab=""

      # ALT 4
theta<-2
x<-seq(from=0,to=10,by=0.1)
pdf<-dexp(x,rate=theta)
cdf<-pexp(x,rate=theta)
sf<-1-cdf
plot(x,sf,pch=20,main="SF of EXP",ylab="SF: S(x)")

p<-seq(0,1,0.01) #Prob seq
quan<-qexp(p,rate=theta)

hx<-(pdf/sf)  #HAZARD FN

integrand<-function(x){theta*x^0}  # !!!DOUBT for function
Hx<-c()
for(i in 1:101){
  objj<-integrate(integrand,lower=0,upper=x[i])
  Hx<-c(Hx,objj$value)
}
matplot(x,cbind(quan,hx,Hx),pch=20,main="Quantiles, HF, CHF, MRL of EXP",
        ylab="Qi, h(x), H(x), MRL",ylim=c(0.0,4.0))