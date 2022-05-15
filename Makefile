TESTFOLDER=tests

all: bookmain
all: boxes

bookmain:
	latexmk $(LATEXMKSWITCHES) -pretex="\def\all{1}" $@.tex
	pkill -HUP mupdf
boxes:
	latexmk $(LATEXMKSWITCHES) -jobname=$(TESTFOLDER)/$@ $(TESTFOLDER)/$@.tex

force:
	$(MAKE) LATEXMKSWITCHES=-gg all

clean:
	$(MAKE) LATEXMKSWITCHES=-C all

.PHONY: all bookmain boxes clean force
