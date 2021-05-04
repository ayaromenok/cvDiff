#!/bin/sh
export NUM_BUFFERS=1000
export WIDTH=4096
export HEIGHT=3072
export FRAMERATE=500
export TIME="\n\nCommand line: %C\nTime spend: %E sec\nMax Memory: %M kBytes\nCPU usage %P\nRes:  $WIDTH*$HEIGHT*$NUM_BUFFERS/%E\n"
time gst-launch-1.0 videotestsrc num-buffers=$NUM_BUFFERS ! video/x-raw,format=NV12,width=$WIDTH,height=$HEIGHT,framerate=$FRAMERATE/1 ! nvh265enc preset=6 rc-mode=1 ! fakesink
#echo "\n\n\t12MP(4096x3072)@500fps for encoding 1000 frames with lossless(6) peset:\n\n"
#echo "total MPix:"
#echo "$NUM_BUFFERS*$WIDTH*$HEIGHT/1048576" | bc 
#echo "$TIME"

time gst-launch-1.0 videotestsrc num-buffers=$NUM_BUFFERS ! video/x-raw,format=NV12,width=$WIDTH,height=$HEIGHT,framerate=$FRAMERATE/1 ! nvh265enc preset=7 rc-mode=1 ! fakesink
#echo "\n\n\t12MP(4096x3072)@500fps for encoding 1000 frames with lossless-hp(7) peset\n\n"
