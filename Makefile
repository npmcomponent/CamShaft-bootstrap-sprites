
build: components bootstrap-sprites.css glyphicons-halflings.png glyphicons-halflings-white.png
	@component build --dev

bootstrap-sprites.css: bootstrap-sprites.less
	node_modules/.bin/recess bootstrap-sprites.less --compile > bootstrap-sprites.css

glyphicons-halflings.png:
	cp node_modules/bootstrap/img/glyphicons-halflings.png glyphicons-halflings.png

glyphicons-halflings-white.png:
	cp node_modules/bootstrap/img/glyphicons-halflings-white.png glyphicons-halflings-white.png

components: component.json
	@component install --dev

clean:
	rm -fr build components bootstrap-sprites.css

.PHONY: clean
