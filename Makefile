


TEX=main.tex
EXPORT_DIR=exports
DATE=$(shell date +%Y%m%d)
TIME=$(shell date +%H%M)
EXPORTED_PDF=$(EXPORT_DIR)/main_$(DATE)_$(TIME).pdf



all:
	mkdir -p $(EXPORT_DIR)
	DATE=$$(date +%Y%m%d); TIME=$$(date +%H%M); \
	latexmk -pdf -interaction=nonstopmode -file-line-error -jobname="main_$${DATE}_$${TIME}" $(TEX); \
	mv main_$${DATE}_$${TIME}.pdf $(EXPORT_DIR)/main_$${DATE}_$${TIME}.pdf; \
	$(MAKE) clean



clean:
	latexmk -C
	rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk *.synctex.gz *.nav *.snm *.vrb *.blg *.bbl *.lof *.lot *.lol *.idx *.ilg *.ind

open:
	open $(EXPORTED_PDF)
