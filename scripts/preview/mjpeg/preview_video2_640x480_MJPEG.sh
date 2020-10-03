#!/bin/sh
V4L_DEVICE=/dev/video2
echo "\n\t\Preview Motion Jpeg 640x480\n\n"
gst-launch-1.0 v4l2src device=$V4L_DEVICE do-timestamp=true ! image/jpeg, width=640, height=480, framerate=30/1 ! jpegparse ! jpegdec ! videoconvert ! videoscale ! xvimagesink sync=false
