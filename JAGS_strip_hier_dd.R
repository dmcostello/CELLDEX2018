model{

  #i = decomp strips
  #s = streams
  #j = users
  #c = control strips
  
  #priors
  sigma.c ~ dunif(0,100)
  tau.c <- 1/sigma.c^2
  sigma ~ dunif(0,100)
  tau <- 1/sigma^2
  
  Tc ~ dlnorm(4.2,0.001)
  CTRL <- exp(Tc)
 
  for(s in 1:n.streams){
    k[s] ~ dlnorm(-6.57,0.20)
  }
   
  #likelihood
  for(i in 1:length(MaxT)){
    T.hat[i] <- exp(-k[Stream[i]]*dd[i]+Tc)
    MaxT[i] ~ dlnorm(log(T.hat[i]),tau)
  }
  
  for(c in 1:length(CtrlT)){
    CtrlT[c] ~ dlnorm(Tc,tau.c)
  }
  
} #end of model
