all:
	latexmk -pdf Csystemfromamonad

stepwise:
	pdflatex Csystemfromamonad
	bibtex Csystemfromamonad
	makeglossaries Csystemfromamonad
	makeindex Csystemfromamonad.idx
	pdflatex Csystemfromamonad
	makeglossaries Csystemfromamonad
	makeindex Csystemfromamonad.idx
	pdflatex Csystemfromamonad
clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.pdf *.toc *.fls *.glo *.fdb_latexmk *.ist *.dvi *.glg *.gls *.idx *.slo *.ilg *.ind *.slg *.sls

%.log %.pdf %.toc %.idx %.slo %.glo %.out %.aux %.ist : %.tex %.bbl
	pdflatex $*
%.glg %.gls %.slg %.sls : %.ist %.glo %.slo
	makeglossaries $*
%.blg %.bbl : %.aux
	bibtex $*
%.ind %.ilg : %.idx
	makeindex $*.idx

test:
	pdflatex Csystemfromamonad
	$(MAKE) Csystemfromamonad.ind Csystemfromamonad.bbl Csystemfromamonad.gls Csystemfromamonad.sls
	pdflatex Csystemfromamonad
	$(MAKE) Csystemfromamonad.ind Csystemfromamonad.bbl Csystemfromamonad.gls Csystemfromamonad.sls
	pdflatex Csystemfromamonad
	$(MAKE) Csystemfromamonad.ind Csystemfromamonad.bbl Csystemfromamonad.gls Csystemfromamonad.sls
	pdflatex Csystemfromamonad
