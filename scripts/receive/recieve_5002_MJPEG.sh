#!/bin/sh
RECEIVER_PORT=5002
gst-launch-1.0 -e udpsrc port=$RECEIVER_PORT ! application/x-rtp, encoding-name=JPEG,payload=26 ! rtpjpegdepay ! jpegdec !  autovideosink
