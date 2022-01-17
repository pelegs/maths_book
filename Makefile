all: bookmain
all: boxes

bookmain:
	latexmk $(LATEXMKSWITCHES) $@.tex
boxes:
	latexmk $(LATEXMKSWITCHES) $@.tex

force:
	$(MAKE) LATEXMKSWITCHES=-gg all

clean:
	$(MAKE) LATEXMKSWITCHES=-C all

.PHONY: all bookmain boxes clean force
