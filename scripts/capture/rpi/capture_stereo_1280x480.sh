#!/bin/bash
DATE=$(date +"%Y%m%d_%H%M")
raspistill -w 1280 -h 480 -3d sbs -o out/img__${DATE}_1280x480_sbs.jpg
raspistill -w 640 -h 480 -cs 0 -o out/img__${DATE}_640x480_left.jpg
raspistill -w 640 -h 480 -cs 1 -o out/img__${DATE}_640x480_right.jpg
