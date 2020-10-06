gst-launch-1.0 -v udpsrc port=5000 ! application/x-rtp,clock-rate=90000,payload=96 ! rtph265depay ! h265parse ! avdec_h265 ! videoconvert ! autovideosink
