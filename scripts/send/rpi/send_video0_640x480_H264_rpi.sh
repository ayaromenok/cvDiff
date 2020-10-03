#!/bin/sh
#gst-launch-1.0 videotestsrc is-live=true ! v4l2h264enc ! h264parse ! rtph264pay ! rtph264depay ! avdec_h264 ! videoconvert ! autovideosink
gst-launch-1.0 v4l2src ! video/x-h264, width=640, height=480, framerate=25/1 ! h264parse ! rtph264pay config-interval=1 pt=96 ! udpsink sync=false host=192.168.1.11 port=5000
