C:\gstreamer\1.0\x86_64\bin\gst-launch-1.0 --gst-debug-level=2 udpsrc port=5803 caps="application/x-rtp, media=(string)video, clock-rate=(int)90000, encoding-name=(string)H264, payload=(int)96, a-framerate=(string)20" ! rtpjitterbuffer ! rtph264depay ! h264parse ! avdec_h264 ! autovideosink sync=false