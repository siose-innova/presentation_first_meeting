
# Produce PDFs from all Markdown files in a directory

EXCLUDED_MD = README.md
SLIDES_MD    = $(filter-out $(EXCLUDED_MD), $(wildcard *_slides.md))

SLIDES       = $(SLIDES_MD:_slides.md=_slides.pdf) 


all: $(SLIDES)

%_slides.pdf: %_slides.md
	pandoc $< --output $@ \
		--latex-engine=xelatex \
		--from markdown+autolink_bare_uris+ascii_identifiers+tex_math_single_backslash \
		--to beamer \
		--listings

clean:
	rm $(SLIDES)
