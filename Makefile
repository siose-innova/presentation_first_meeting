# Produce PDFs from all Markdown files in a directory

# List files to be made by finding all *.md files and appending .pdf

SRC_FILES = $(filter-out README.md, $(wildcard *.md))
FINAL := slides.pdf


all:  $(SRC_FILES)

	pandoc \
	+RTS -K512m -RTS \
	$(SRC_FILES) \
	--to beamer \
	--from markdown+autolink_bare_uris+ascii_identifiers+tex_math_single_backslash \
	--output $(FINAL) \
	--highlight-style tango \
	--latex-engine pdflatex \
	--include-in-header styles/geomatica.sty \
	--template styles/default.beamer
