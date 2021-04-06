#reciece omxplayer --win 0,0,800,480 udp://@:5000
raspivid -a 12 -t 0 -w 1280 -h 720 -hf -ih -fps 30 -o udp://192.168.1.4:5000
