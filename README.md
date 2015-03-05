latex-tikz-template - minimal LaTeX + TikZ template makefile project
-----

This is a simple template LaTeX project that

1. Includes a BibTeX bibliography.
2. Generates some example TikZ images in a subdirectory.
3. Does all this will a Makefile: just type `make`.

TikZ images should be specified in `Makefile.inc`. Then you should put their
source file in the `images/` subdirectory. The Makefile will then take care of
generating and cleaning up.
