#!/bin/sh
V4L_DEVICE=/dev/video2
RECEIVER_IP_PORT=192.168.1.11:5002
echo "\n\t\tSending MJPEG 640x480@30 from $V4L_DEVICE to $RECEIVER_IP_PORT\n\n"
gst-launch-1.0 v4l2src device=$V4L_DEVICE ! "image/jpeg,width=640, height=480,framerate=30/1" ! rtpjpegpay ! udpsink clients=$RECEIVER_IP_PORT

