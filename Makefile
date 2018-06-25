all: master.pdf

master.pdf: *.tex */*.tex
	pdflatex master.tex -interaction=nonstopmode && pdflatex -interaction=nonstopmode master.tex

publish: master.pdf
	scp master.pdf 1blu-rootserver:/var/www/html/fossgis/booklet18/
