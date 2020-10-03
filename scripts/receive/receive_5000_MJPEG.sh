#!/bin/sh
RECEIVER_PORT=5000
echo "\n\t\tReceiving MotionJPEG at $RECEIVER_PORT\n\n"
gst-launch-1.0 -e udpsrc port=$RECEIVER_PORT ! application/x-rtp, encoding-name=JPEG,payload=26 ! rtpjpegdepay ! jpegdec !  autovideosink
