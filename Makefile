.PHONY: all clean FORCE_MAKE

all: letter.pdf

%.pdf: %.tex FORCE_MAKE
	latexmk -pdf -dvi- -ps- $<

clean:
	latexmk -C
