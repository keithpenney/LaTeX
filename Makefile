# Build with pdflatex

DEMOS=demo1 demo2 demo3 tables lists

%.pdf: %.tex
	pdflatex -interaction nonstopmode -halt-on-error -file-line-error $^

.PHONY: clean
clean:
	rm -rf $(addsuffix .aux, $(DEMOS))
	rm -rf $(addsuffix .log, $(DEMOS))
	rm -rf $(addsuffix .pdf, $(DEMOS))
