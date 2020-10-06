gst-launch-1.0 -e nvarguscamerasrc ! 'video/x-raw(memory:NVMM), width=1920, height=1080, framerate=30/1' !  nvv4l2h265enc bitrate=8000000 insert-sps-pps=true ! rtph265pay mtu=1400 ! udpsink host=127.0.0.1 port=5000 sync=false async=false

