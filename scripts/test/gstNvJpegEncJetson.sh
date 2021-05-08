vCOUNT=1000
gst-launch-1.0 videotestsrc num-buffers=$vCOUNT ! 'video/x-raw, width=(int)1280, height=(int)720, format=(string)I420, framerate=(fraction)30/1' ! filesink location=720p.yuv
gst-launch-1.0 filesrc location=720p.yuv ! videoparse width=1280 height=720 format=2 framerate=30 ! nvvidconv ! 'video/x-raw(memory:NVMM), width=(int)5952, height=(int)3348, format=(string)I420, framerate=(fraction)30/1' ! nvjpegenc ! filesink location=enc.jpg
echo "used $vCOUNT  frames:5952x3348@30"

