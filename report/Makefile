all: built-bib.bib
	scribble --pdf report.scrbl

built-bib.bib: sections/*.bib inflow.bib
	cat inflow.bib sections/*.bib > built-bib.bib

install:
	raco pkg install markdown
