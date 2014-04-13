PANDOC = ~/.cabal/bin/pandoc
DOCS = Kommunalwahlprogramm-Piraten-Solingen.md
OUTDIR = .
REV = $(shell git rev-parse --short HEAD)
TARGETNAME = Kommunalwahlprogramm-Piraten-Solingen

all: pdf epub

pdf:
	$(PANDOC) --toc --latex-engine=xelatex --variable fontsize=12pt --variable documentclass=scrbook --variable lang=german --variable date='Revisions-ID: $(REV)' -H includes.tex -o $(OUTDIR)/$(TARGETNAME)-$(REV).pdf $(DOCS)

latex:
	$(PANDOC) --latex-engine=xelatex --template=template.latex -o $(OUTDIR)/$(TARGETNAME)-$(REV).tex $(DOCS)

epub:
	$(PANDOC) -o $(OUTDIR)/$(TARGETNAME)-$(REV).epub $(DOCS)

.PHONY: clean

clean:
	rm $(OUTDIR)/*.epub $(OUTDIR)/*.pdf

rebuild: clean all

