#!/bin/bash
for f in *.pdf
do
    echo $f
    pdftotext $f
done

cat *.txt > all.txt
wc -m all.txt
