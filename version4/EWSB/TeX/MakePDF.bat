pdflatex NonUMSSMv4-EWSB.tex 
cd Diagrams 
FOR %%I IN (*.mp) DO MPOST "%%I" 
cd .. 
pdflatex NonUMSSMv4-EWSB.tex 
