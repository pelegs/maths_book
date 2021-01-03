TEX = pdflatex
FILE = bookmain
FLAGS = --shell-escape

do:
	$(TEX) $(FLAGS) $(FILE)
	$(TEX) $(FLAGS) $(FILE)
