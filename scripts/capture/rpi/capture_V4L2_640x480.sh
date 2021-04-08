#v4l2-ctl -d /dev/video0 --list-ctrls
v4l2-ctl --device /dev/video0 -v width=640,height=480 --stream-mmap --stream-to=frame.jpg --stream-count=1 --set-ctrl=exposure_time_absolute=100 
