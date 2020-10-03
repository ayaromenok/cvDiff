#!/bin/sh
#gst-launch-1.0 videotestsrc is-live=true ! v4l2h264enc ! h264parse ! rtph264pay ! rtph264depay ! avdec_h264 ! videoconvert ! autovideosink
gst-launch-1.0 -v videotestsrc is-live=true ! video/x-raw,framerate=25/1 ! videoconvert ! v4l2h264enc ! h264parse ! rtph264pay pt=96 ! udpsink host=192.168.1.11 port=5000
