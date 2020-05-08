        # Q1.ii) GAMMA DISTN


    # ALT 2
a<-0.5;b<-2
x<-seq(0,20,0.1);x
y<-1-exp(-b*x);y
# SURVIVAL FUNCTION
plot(x,y)
# !!!! SOME MISTAKE .... ERLANG DISTN !!! 

# HAZARD FUNCTION
hx<-(b^a)*(x^(a-1))*(1-y)/factorial(a-1)/(y);hx
plot(x,hx)

# CUMULATIVE HAZARD FUNCTION
Hx<-

# MEAN RESIDUAL LINE
mu<-a/b
plot(x,x-mu)

#QUANTILES
plot(c(1:5),quantile(rgamma(1001,a,1/b)),pch=16)


        # ALT 2
a<-0.5;b<-2
x<-seq(0,5,0.1);x
y<-integrate((b^a)*(x^(a-1))*(exp(-b*x))/factorial(a-1),0,x);y
# SURVIVAL FUNCTION
plot(x,y)

# HAZARD FUNCTION
hx<-(b^a)*(x^(a-1))*(1-y)/factorial(a-1)/(y);hx
plot(x,hx)

# CUMULATIVE HAZARD FUNCTION
Hx<-
  
  # MEAN RESIDUAL LINE
  mu<-0.5
plot(x,x-mu)