.PHONY: diss.pdf all clean clean-all

all: diss.pdf

diss.pdf: diss.tex
	 latexmk -pdf -shell-escape -file-line-error -f diss.tex

clean:
	latexmk -c
	$(RM) -f diss.auxlock
	$(RM) -f diss.loa
	$(RM) -f diss.unq
	$(RM) -f diss.run.xml

clean-all: clean
	$(RM) -f diss.bbl

clean-purge: clean-all
	latexmk -C
