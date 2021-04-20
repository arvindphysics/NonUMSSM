pdflatex NonUMSSM-EWSB.tex 
cd Diagrams 
FOR %%I IN (*.mp) DO MPOST "%%I" 
cd .. 
pdflatex NonUMSSM-EWSB.tex 
