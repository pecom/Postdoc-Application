hello:
	echo "Hello World"
clean:
	cp main.tex bkp.tex
	cp main.bib bkp.bib
	rm main.*
	rm main-blx.bib
	mv bkp.bib main.bib
	mv bkp.tex main.tex

pdf:
	pdflatex main
	bibtex main
	bibtex main
	pdflatex main


