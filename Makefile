SRC=content/resume.md
STYLE=styles/resume.css
OUT=build/resume.pdf
HTML=build/resume.html

pdf:
	pandoc $(SRC) \
		--from markdown \
		--to html5 \
		--standalone \
		--css $(STYLE) \
		--pdf-engine=weasyprint \
		--output $(OUT)

html:
	pandoc $(SRC) \
		--from markdown \
		--to html5 \
		--standalone \
		--css ../$(STYLE) \
		--output $(HTML)

clean:
	rm -f build/*.pdf build/*.html
