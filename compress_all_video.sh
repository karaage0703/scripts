#!/bin/sh
OUTPUT_DIR=output
mkdir $OUTPUT_DIR

for FILE in *.MP4
do
    ffmpeg -i "$FILE" -crf 40  "$OUTPUT_DIR/$FILE"
done

for FILE in *.MOV
do
    ffmpeg -i "$FILE" -crf 40  "$OUTPUT_DIR/$FILE"
done

for FILE in *.AAE
do
    ffmpeg -i "$FILE" -crf 40  "$OUTPUT_DIR/$FILE"
done
