include Makefile.inc
FIGURE_DEPS=$(FIGURES:%.pdf=images/%.pdf)
DIRS=images

main.pdf: main.tex main.bib $(DIRS) $(FIGURE_DEPS)
	pdflatex $<
	bibtex main
	pdflatex $<
	pdflatex $<

.PHONY: clean

images: force_look
	cd images; make

clean:
	rm main.pdf main.aux main.idx main.log main.out main.bbl main.blg
	-for d in $(DIRS); do (cd $$d; make clean); done

force_look:
	true
