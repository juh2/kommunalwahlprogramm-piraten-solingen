PANDOC = ~/.cabal/bin/pandoc
DOCS = Kommunalwahlprogramm-Piraten-Solingen.md
OUTDIR = .
REV = $(shell git rev-parse --short HEAD)
TARGETNAME = Kommunalwahlprogramm-Piraten-Solingen

all: pdf epub

pdf:
	$(PANDOC) --toc --latex-engine=xelatex --variable classoption=smallheadings --variable fontsize=12pt --variable documentclass=scrbook --variable lang=german --variable mainfont='DejaWeb' --variable sansfont='Politics Head' --variable date='Revisions-ID: $(REV)' -H includes.tex -o $(OUTDIR)/$(TARGETNAME)-$(REV).pdf $(DOCS)

latex:
	$(PANDOC) --latex-engine=xelatex --template=template.latex -o $(OUTDIR)/$(TARGETNAME)-$(REV).tex $(DOCS)

epub:
	$(PANDOC) -o $(OUTDIR)/$(TARGETNAME)-$(REV).epub $(DOCS)

html:
	$(PANDOC) -o $(OUTDIR)/$(TARGETNAME)-$(REV).html $(DOCS)

word:
	$(PANDOC) -o $(OUTDIR)/$(TARGETNAME)-$(REV).docx $(DOCS)

.PHONY: clean

clean:
	rm $(OUTDIR)/*.epub $(OUTDIR)/*.pdf

rebuild: clean all

