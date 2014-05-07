f<-function(arg1=x)
{
  print(length(arg1))
  
  
  
  for (i in 1:length(arg1))
  
    if ((arg1[i]>10) && (arg1[i]<20))
  {
    
    y[i]=0;
  }
  else
  {
    y[i]=1;
  }
  print(y)
  plot(arg1,y)
  return (y);
}