#!/bin/sh
mkdir -p build
echo "[*] Building pdf..."
asciidoctor-pdf -a pdf-fontsdir="GEM_FONTS_DIR,theme/fonts" -a pdf-theme="theme/pdf.yml"  ${1:-README.adoc}  -o build/${1:-output}.pdf
echo "[*] Done ! Check it out in ./build/${1:-output}.pdf"
