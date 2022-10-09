#!/bin/sh
mkdir -p build
echo "[*] Building pdf..."
echo "[*] If there is maths inside your documents, a stem directory will be created. Don't delete it."
docker run -it --rm -v $PWD:/documents/ asciidoctor/docker-asciidoctor \
asciidoctor-pdf -a pdf-fontsdir="GEM_FONTS_DIR,theme/fonts" -a pdf-theme="theme/pdf.yml" -r asciidoctor-mathematical ${1:-README.adoc} -o build/${1:-output}.pdf

echo "[*] Done ! Check it out in ./build/${1:-output}.pdf"
