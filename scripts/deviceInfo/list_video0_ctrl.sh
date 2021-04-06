v4l2-ctl -d /dev/video0 --list-ctrls
#v4l2-ctl -d /dev/video0 --get-ctrl=exposure
#v4l2-ctl -d /dev/video0 --set-ctrl=exposure=3000
#v4l2-ctl --device /dev/video0 --stream-mmap --stream-to=frame.raw --stream-count=1 --set-ctrl=exposure=1000 --set-ctrl=analogue_gain=16  --set-ctrl=focus_absolute=30
#convert -size 4224x3136 -depth 24 uyvy:frame.raw frame.png
#ffmpeg -s 4224x3136 -pix_fmt nv12 -i frame.raw -f image2 -pix_fmt rgb24 _out_%03d_.png
