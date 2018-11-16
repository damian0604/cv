#!/bin/bash
rm *.bbl
rm *.aux
#pdflatex -interaction=nonstopmode cv.tex
pdflatex cv.tex
for f in *.aux
do
    bibtex $f
done
#pdflatex -interaction=nonstopmode cv.tex
pdflatex cv.tex

