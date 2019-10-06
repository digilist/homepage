dev:
	parcel src/index.html

build: dist
	rm -rf dist
	parcel build src/index.html
