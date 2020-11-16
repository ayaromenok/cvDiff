#!/bin/sh
gst-launch-1.0 rkisp device=/dev/video0 io-mode=4 analyzer=0 enable-3a=0 ! video/x-raw,format=NV12,width=640,height=480, framerate=30/1, exposure=4 ! videoconvert ! x264enc ! h264parse pt=96 ! rtph264pay mtu=1400 ! udpsink=192.168.1.11 port=5000 sync=false async=false 

#rockchipmpp - need to build
