repere<-function(Titre)
{
  #x<-seq(0, 100)
  x<-seq(0, 25)
  #y<-seq(-3,3,0.06)
  #y<-seq(-2,3,0.20)
   y<-seq(-1.2,1.2,0.09)
  plot(x, y, main = Titre, xlab = "Temps", ylab = "Levels", type = "l", col = "white", pch = 3, lab = c(10, 5, 0))
  #title(Titre, cex.main = 0.8)
}
