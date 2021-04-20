#!/bin/bash 
pdflatex NonUMSSMv4-EWSB.tex 
cd Diagrams 
find . -name "*.mp" -exec mpost {} \; 
cd .. 
pdflatex NonUMSSMv4-EWSB.tex 
echo "" 
echo "PDF for Model finished" 
echo "Thanks for using SARAH" 
echo "" 
