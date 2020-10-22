#!/bin/bash
echo "Safe workaround - some CM's can have issues with capturing in Side-By-Side mode, while continue to work in single camera mode"
echo "ImageMagick required to make SBS stereo image"
DATE=$(date +"%Y%m%d_%H%M")
raspistill -w 640 -h 480 -cs 0 -o out/img__${DATE}_640x480_left.jpg
raspistill -w 640 -h 480 -cs 1 -o out/img__${DATE}_640x480_right.jpg
convert +append out/img__${DATE}_640x480_left.jpg out/img__${DATE}_640x480_right.jpg out/img__${DATE}_1280x480_sbs.jpg
