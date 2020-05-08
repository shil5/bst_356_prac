# Q 1. ii) GAMMA
#a or alpha is shape parameter
b<-1 # or lambda is 1/scale par
x<-seq(0,10,0.1)
ps<-as<-cs<-sfs<-hxs<-Hxs<-NULL
for(i in c(1:6,10)){
  a<-0.5*i
  as<-c(as,a)
  #PDF
  pdf<-dgamma(x,a,1/b) 
  ps<-rbind(ps,pdf)
  #CDF
  cdf<-pgamma(x,a,1/b) #lower.tail=TRUE means P(X<=x)(default)
  cs<-rbind(cs,cdf)
  #SF
  sfs<-1-cs
    #sfs<-rbind(sfs,sf)
  #HAZARD FN
  hx<-(pdf/sf)
  hxs<-rbind(hxs,hx)
  #CUM HAZARD FN
    #METHOD 1:
  Hxs<--log(sfs)
    #METHOD 2:
  '#integrand<-function(x){
    a/b*x^()
  }  # !!!DOUBT for function
  Hx<-c()
  for(i in 1:101){
    objj<-integrate(integrand,lower=0,upper=x[i]) 
    #unlist() or str() not reqd. over integrate
    Hx<-c(Hx,objj$value)
  } #'
  Hxs<-rbind(Hxs,Hx)
}
#PDF
rownames(ps)<-as
colnames(ps)<-x;ps
matplot(x,t(ps),type="l",main="PDF for X~gamma(a,b)",lty=1,lwd=2,col=1:length(as),
        ylab="PDF: f(x)",ylim=c(0,1.7),xlim=c(0,6))
# oR as<-seq(0.5,2.5,0.5)
legend("topright",inset=0.01,cex=0.9,legend=as,lty=1,lwd=2,col=1:length(as),bg=("transparent"),
       horiz=F,title="Value of a: (b=1)") #,seg.len=2
#CDF
rownames(cs)<-as
colnames(cs)<-x;cs
matplot(x,t(cs),type="l",main="CDF for X~gamma(a,b)",lty=1,lwd=2,col=1:length(as),
        ylab="CDF: F(x)",ylim=c(0,1),xlim=c(0,6))
legend("bottomright",inset=0.01,cex=0.75,legend=as,lty=1,lwd=2,col=1:length(as),bg=("transparent"),
       horiz=F,title="Value of a: (b=1)")
#SF
rownames(sfs)<-as
colnames(sfs)<-x;sfs
matplot(x,t(sfs),type="l",main="SF for X~gamma(a,b)",lty=1,lwd=2,col=1:length(as),ylab="SF: S(x)",
        ylim=c(0,1),xlim=c(0,6))
legend("topright",inset=0.01,cex=0.9,legend=as,lty=1,lwd=2,col=1:length(as),bg=("transparent"),
       horiz=F,title="Value of a: (b=1)")
#HAZARD FN
rownames(hxs)<-as
colnames(hxs)<-x;hxs
matplot(x,t(hxs),type="l",main="HAZARD FN. for X~gamma(a,b)",lty=1,lwd=2,
        col=1:length(as),ylab="HF: h(x)",ylim=c(0,2.5),xlim=c(0,6))
legend("topright",inset=0.01,cex=0.75,legend=as,lty=1,lwd=2,col=1:length(as),
       horiz=F,title="Value of a: (b=1)")
#CUM HAZARD FN
rownames(Hxs)<-as
colnames(Hxs)<-x;hxs
matplot(x,t(Hxs),type="l",main="CUMULATIVE HAZARD FN. for X~gamma(a,b)",lty=1,lwd=2,
        col=1:length(as),ylab="CHF: H(x)",ylim=c(0,10),xlim=c(0,10))
legend("topleft",inset=0.01,cex=0.75,legend=as,lty=1,lwd=2,col=1:length(as),bg=("transparent"),
       horiz=F,title="Value of a: (b=1)")
