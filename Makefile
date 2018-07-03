all: master.pdf

cropped: cropped.pdf

master.pdf: *.tex icons/*.pdf images-print/*.pdf wallpaper/*.pdf sponsors/*.pdf images-print/*.tex
	lualatex master.tex -interaction=nonstopmode && lualatex -interaction=nonstopmode master.tex

cropped.pdf: master.pdf
	gs -o cropped.pdf -sDEVICE=pdfwrite -c "[/CropBox [28.3464 28.3464 325.9836 447.87312]" -c " /PAGES pdfmark" -dPDFSETTINGS=/prepress -f master.pdf

publish: master.pdf cropped.pdf
	scp master.pdf 1blu-rootserver:/var/www/html/sotm/booklet18/
	scp cropped.pdf 1blu-rootserver:/var/www/html/sotm/booklet18/
