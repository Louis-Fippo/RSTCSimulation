#Auteur: Fippo Fitime Louis
#Date:06-11-2013
#But: fonction permettant de tracer toutes les simulations effectuées


drawSimNew <-function(JeuxDonneASB,nomf)
{
  #inclusion des fichiers sources
 
  source("drawAllNew.R");

  #on va créer un même fichier pour tout le monde
  
  borne=c(1,5,9,13,17,21,25);
  
  for(i in borne)
  {
    
    drawAllNew(JeuxDonneASB,i,nomf);
    
  }
  
}
