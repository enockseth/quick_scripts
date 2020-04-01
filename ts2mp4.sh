#!/bin/bash
if [ ! -d ./mp4 ]; then
    mkdir -p ./mp4;
fi;

for file in ./*.ts

do
	basePath=${file%.*}
	echo "Converting ${file} .........."
	ffmpeg -i "${file}" -c:v libx264 -c:a aac ./mp4/"${basePath}.mp4"
	echo "========================================================"
	echo "Conversion from ${file} to ${basePath}.mp4 complete!"
	echo "========================================================"
done
