#Auteur: Fippo Fitime Louis
#Date:06-11-2013
#But: fonction permettant de tracer un signal
#elle se sert de la fonction permettant de tracer un état
drawsignalNew<-function(x,trait)
{
  source("drawStateNew.R");
  print("valeur X")
  print(x[1])
  print(length(x))


  PState=-1;
  for (i in 1:length(x)) 
    {
    drawStateNew(PState,x[i],i,trait);
    PState=x[i];
    
  }
}
