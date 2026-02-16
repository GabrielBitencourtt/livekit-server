#!/bin/bash
mkdir -p /data/recordings
livekit-server --config /etc/livekit.yaml &
exec caddy run --config /etc/caddy/Caddyfile
