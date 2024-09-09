compile:
	rm -rf ./build/
	mkdir build
	pandoc ./src/resume.md --standalone --css ./style.css -o ./build/resume.html
	cp ./src/style.css ./build/style.css
	weasyprint ./build/resume.html ./build/resume.pdf
