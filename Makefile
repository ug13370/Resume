TEX=main.tex
EXPORT_DIR=exports

all:
	mkdir -p $(EXPORT_DIR)
	DATE=$$(date +%Y%m%d); TIME=$$(date +%H%M); \
	latexmk -pdf -interaction=nonstopmode -file-line-error -jobname="main_$${DATE}_$${TIME}" $(TEX); \
	PDF="$(EXPORT_DIR)/main_$${DATE}_$${TIME}.pdf"; \
	mv "main_$${DATE}_$${TIME}.pdf" "$$PDF"; \
	$(MAKE) clean; \
	open "$$PDF"

clean:
	latexmk -C
	rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk *.synctex.gz *.nav *.snm *.vrb *.blg *.bbl *.lof *.lot *.lol *.idx *.ilg *.ind

open:
	open $$(ls -t $(EXPORT_DIR)/main_*.pdf | head -1)
