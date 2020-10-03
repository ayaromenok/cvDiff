#!/bin/sh
V4L_DEVICE=/dev/video0
echo "\n\t\Preview YUY2 video 640x480\n\n"
gst-launch-1.0 v4l2src device=$V4L_DEVICE ! video/x-raw,format=YUY2,width=640,height=480 !  xvimagesink
