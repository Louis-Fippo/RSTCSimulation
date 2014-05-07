
#pour chaque fichier de donnée on va tracer les simulations 
#il s'agit des fichiers FichREP*

for y in FichREP*; do

  Rscript drawSimG.R $y;
   

done
