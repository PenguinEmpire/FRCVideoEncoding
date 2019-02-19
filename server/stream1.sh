v4l2-ctl -d /dev/video1 -c brightness=80
gst-launch-1.0 --gst-debug-level=2 -e v4l2src device=/dev/video1 ! "video/x-raw, format=(string)I420, width=640, height=480, framerate=20/1" ! omxh264enc bitrate=1200000 ! "video/x-h264, stream-format=(string)byte-stream" ! h264parse ! rtph264pay ! udpsink host=10.25.51.20 port=5803
