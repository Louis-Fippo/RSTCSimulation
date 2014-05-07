#Auteur: Fippo Fitime Louis
#Date:06-11-2013
#But: fonction permettant de tracer les états des sortes intéressantes

drawAllBis<-function(Donnees)
{
  source("repere.R");
  source("drawsignal.R");
  par(mfrow=c(2,2));
  noms=Donnees[,1];
  Donnees=Donnees[,-1];
  for(i in 13:14)
  {
    DonneesInt=Donnees[i,];
    #DonneesInt=DonneesInt[-103];
    DonneesNumeric=as.numeric(DonneesInt);
    repere(noms[i]);
    print(noms[i])
    drawsignal(DonneesNumeric);
  }
}
