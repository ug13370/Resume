


TEX=main.tex
EXPORT_DIR=exports
DATE=$(shell date +%Y%m%d)
TIME=$(shell date +%H%M)
EXPORTED_PDF=$(EXPORT_DIR)/main_$(DATE)_$(TIME).pdf

all: export

export:
	mkdir -p $(EXPORT_DIR)
	latexmk -pdf -interaction=nonstopmode -file-line-error -jobname="main_$(DATE)_$(TIME)" $(TEX)
	mv main_$(DATE)_$(TIME).pdf $(EXPORTED_PDF)

clean:
	latexmk -C

open:
	open $(EXPORTED_PDF)
