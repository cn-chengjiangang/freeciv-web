python img-extract.py
pngcrush pre-freeciv-web-tileset-1.png freeciv-web-tileset-1.png
pngcrush pre-freeciv-web-tileset-2.png freeciv-web-tileset-2.png
cp freeciv-web-tileset*.png ../freeciv-web/src/main/webapp/tileset/
cp freeciv-web-tileset*.js ../freeciv-web/src/main/webapp/javascript/
cp tiles/*.png ../freeciv-web/src/main/webapp/tiles/
cp freeciv-web-tileset-small-preload.html ../freeciv-web/src/main/webapp/tiles/