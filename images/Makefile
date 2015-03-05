include ../Makefile.inc

all: $(FIGURES)

%.pdf: %.tex
	pdflatex $<

clean:
	rm $(FIGURES) $(FIGURES:pdf=aux) $(FIGURES:pdf=log)
