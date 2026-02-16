#!/bin/bash
mkdir -p /data/recordings

# Serve recordings on port 8080
darkhttpd /data/recordings --port 8080 --daemon

# Start LiveKit on port 7880
exec livekit-server --config /etc/livekit.yaml
