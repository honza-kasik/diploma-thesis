thesis: %: %.tex
	@pdflatex $@
	@pdflatex $@
	@biber $@
	@makeglossaries $@
	@makeindex $@.idx
	@pdflatex $@
	@pdflatex $@

clean:
	@rm -v -f *.glsdefs *.bcf *.lo* *.aux *.ind *.idx *.ilg *.toc *.acn *.run.xml *-blx.bib *.ist *.glo  *.blg *.bbl  *.gls *.glg *.alg *.acr

dist:
	@mkdir thesis
	@cp -r -f thesis.pdf thesis.tex thesis.cls kibase.sty graphics *bib *bx Makefile README.txt LICENSE thesis/
	@rm -f thesis.zip
	@zip -r thesis.zip thesis
	@rm -r -f thesis
