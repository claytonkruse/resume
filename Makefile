compile:
	rm -rf ./build/
	mkdir build
	cp ./src/resume.md ./build
	pandoc ./src/resume.md --standalone --css ./style.css -o ./build/resume.html
	cp ./src/style.css ./build
	weasyprint ./build/resume.html ./build/resume.pdf
