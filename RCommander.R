
Dataset <- readXL("D:/2�/Bioqu�mica I/Pr�cticas/Bioqu�mica (2).xlsx", 
  rownames=FALSE, header=TRUE, na="", sheet="Sheet5", stringsAsFactors=TRUE)
scatterplot(micromol.PNF~ABS.a.400nm, reg.line=lm, smooth=FALSE, spread=FALSE, 
  boxplots=FALSE, span=0.5, ellipse=FALSE, levels=c(.5, .9), xlab="Micromoles de PNF.", 
  ylab="Absorbancia a 400 nm.", main="Recta patr�n de PNF.",col="green", pch=c(17), data=Dataset)
legend(x = "topleft", legend = c("y=0.006x+0.048", "R^2=0.991"))








scatterplot(X.abs~pH, reg.line=FALSE, smooth=FALSE, spread=FALSE, boxplots=FALSE, span=0.5, 
  ellipse=FALSE, levels=c(.5, .9), xlab="Absorbancia seg�n el pH utilizado.", 
  ylab="% de absorbancia a 400 nm.", main="pH del tamp�n utilizado.",col="#FF00CC", pch=c(18), data=Dataset)





scatterplot(Actividad~micromol.PNF, reg.line=FALSE, smooth=FALSE, spread=FALSE, 
  boxplots=FALSE, span=0.5, ellipse=FALSE, levels=c(.5, .9), 
  xlab="Concentraci�n de sustrato (mM).", 
  ylab="Velocidad (Actividad enzim�tica) (U/mL).", main="Curva de Michaelis-Menten.", 
  pch=c(11),col="purple", data=Dataset)




scatterplot(X1..Actividad~X1..S.., reg.line=lm, smooth=FALSE, spread=FALSE, 
  boxplots=FALSE, span=0.5, ellipse=FALSE, levels=c(.5, .9), 
  xlab="1/Concentraci�n de sustrato (mM^-1).", 
  ylab="1/Velocidad (1/Actividad enzim�tica) (mL/U).", main="Recta de Lineweaver-Burk.",
   pch=c(1),col="green", data=Dataset)
legend(x = "topleft", legend = c("y=20.94x+0.15", "R^2=0.999"))
abline(v = 0, col="orange") 




scatterplot(X.abs.1~T, reg.line=FALSE, smooth=FALSE, spread=FALSE, boxplots=FALSE, 
  span=0.5, ellipse=FALSE, levels=c(.5, .9), xlab="Temperatura (�C).", 
  ylab="% de absorbancia.", main="Absorbancia seg�n la temperatura de incubaci�n.", 
  pch=c(16),col="purple", data=Dataset)

