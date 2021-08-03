all:
	pdflatex Csystemfromamonad
	bibtex Csystemfromamonad
	makeglossaries Csystemfromamonad
	pdflatex Csystemfromamonad
clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.pdf *.toc *.fls *.glo *.fdb_latexmk *.ist *.dvi *.glg *.gls
