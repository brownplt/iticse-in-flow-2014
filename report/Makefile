all: built-bib.bib
	scribble --pdf report.scrbl

latex: built-bib.bib
	scribble --latex report.scrbl

bib: built-bib.bib

built-bib.bib: sections/*.bib inflow.bib
	cat inflow.bib sections/*.bib > built-bib.bib

install:
	raco pkg install markdown
