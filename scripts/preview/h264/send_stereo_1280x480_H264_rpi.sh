#!/bin/sh
raspivid -t 0 -w 1280 -h 480 -fps 25 -3d sbs -b 600000 -o - | gst-launch-1.0 -v fdsrc  ! h264parse ! rtph264pay ! rtph264depay ! avdec_h264 ! videoconvert ! autovideosink

#raspivid -t 0 -w 960 -h 540 -fps 25 -hf -b 2000000 -o - | gst-launch-1.0 -v fdsrc ! video/x-raw,framerate=25/1 ! videoconvert ! v4l2h264enc ! h264parse ! rtph264pay pt=96 ! udpsink host=192.168.1.11 port=5000
#raspivid -t 0 -o - | gst-launch-1.0 fdsrc ! h264parse ! rtph264pay config-interval=1 pt=96 ! gdppay ! udpsink host=192.168.1.11 port=5000
#OK gst-launch-1.0 v4l2src ! video/x-h264, width=640, height=480, framerate=25/1 ! h264parse ! rtph264pay config-interval=1 pt=96 ! udpsink sync=false host=192.168.1.11 port=5000
#raspivid -t 0 -w 1280 -h 480 -fps 25 -3d sbs -b 600000 -o - | gst-launch-1.0 -v fdsrc ! h264parse ! rtph264pay config-interval=1 pt=96 ! udpsink sync=false host=192.168.1.11 port=5000