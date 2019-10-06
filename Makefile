dev:
	parcel src/index.html

build: dist
	rm -rf dist
	parcel build src/index.html

deploy: build
	rsync -av -e ssh --delete dist/ fasselt.it:data/fasselt.it
