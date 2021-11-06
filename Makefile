.PHONY: all clean

all: letter.pdf

%.pdf: %.tex defs.tex address.tex signature.pdf ubc-letter-defs.tex ubc-letter-template.tex ubc-logo-2018-fullsig-blue-cmyk.pdf
	latexmk -pdf $<

clean:
	latexmk -C
