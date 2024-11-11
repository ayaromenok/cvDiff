#!/bin/sh
#sudo apt install v4l-utils v4l-conf qv4l2 yavta -y
V4L_DEVICE=/dev/video0
echo "\n\t\tSupported formats at $V4L_DEVICE\n\n"
v4l2-ctl --device=$V4L_DEVICE --list-formats
