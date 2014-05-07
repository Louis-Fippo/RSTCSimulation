#Auteur: Fippo Fitime Louis
#Date:16-11-2013
#But: fonction permettant d'extraire les sortes à surveiller

aSurveiller<-function(Donnees)
{
  NomSortes=c("p11.pts","p25.pts","p31.pts","p32.pts","p42.pts","p43.pts","p44.pts","p45.pts","p52.pts","p65.pts","p78.pts","p103.pts","p111.pts","p114.pts","p115.pts","p117.pts");
  DonneesResultat=Donnees[c("p11.pts","p25.pts","p31.pts","p32.pts","p42.pts","p43.pts","p44.pts","p45.pts","p52.pts","p65.pts","p78.pts","p103.pts","p111.pts","p114.pts","p115.pts","p117.pts"),];

  
  return (DonneesResultat);
}
