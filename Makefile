all:
	pdflatex Csystemfromamonad
	bibtex Csystemfromamonad
	makeglossaries Csystemfromamonad
	makeindex Csystemfromamonad.idx
	pdflatex Csystemfromamonad
	makeglossaries Csystemfromamonad
	makeindex Csystemfromamonad.idx
	pdflatex Csystemfromamonad
clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.pdf *.toc *.fls *.glo *.fdb_latexmk *.ist *.dvi *.glg *.gls
