#to recieve rtsp://192.168.1.131:8554/
raspivid -o - -t 0 -n -w 1280 -h 480 -fps 25 -3d sbs | cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554/}' :demux=h264

