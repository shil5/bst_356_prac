#NORMAL DISTN
mu<-6;s<-2
x<-seq(-5,20,0.1);x
y<-exp(-(x-mu)/s)
Sx<-y/(1+y);Sx
plot(x,Sx) # SURVIVAL FUNCTION

#HAZARD FUNCTION
hx<-1/(s*(1+y));hx
plot(x,hx)

# MEAN RESIDUAL LINE
plot(x,x-mu)