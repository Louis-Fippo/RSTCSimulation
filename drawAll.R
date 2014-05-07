#Auteur: Fippo Fitime Louis
#Date:06-11-2013
#But: fonction permettant de tracer les états des sortes intéressantes

drawAll<-function(Donnees,born,nomf)
{
  #construction du nom du fichier de sortie
  bornbis=born;
  bornbis=as.character(bornbis)
  nomFichier=paste(c(nomf, bornbis,"pdf"), collapse = ".");
  #on redirige la sortie de l'image
  pdf(nomFichier)
  source("repere.R");
  source("drawsignal.R");
  par(mfrow=c(2,2));
  noms=row.names(Donnees);
  
  
  #on fixe les bornes
  Min=born; Max=born+3;

 #on extrait les profils d'expression pour les tracer un par un 
  for(i in Min:Max)
  {
    DonneesInt=Donnees[i,];
    DonneesInt=DonneesInt[-28];
    DonneesNumeric=as.numeric(DonneesInt);
    repere(noms[i]);
    
    drawsignal(DonneesNumeric);
  }
  
  dev.off()
}
