
 source("aSurveiller.R");
source("drawSim.R");
#lecture du fichier et simulation
args <- commandArgs(TRUE); #on recupère l'argument donné au script
print(args[1])
JeuxDonne=read.table(args[1], h=T);


#on extrait les données à surveiller
JeuxDonneAS=aSurveiller(JeuxDonne);

#on trace les données extraites
drawSim(JeuxDonneAS,args[1]);


