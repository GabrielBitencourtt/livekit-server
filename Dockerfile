FROM livekit/livekit-server:latest
COPY livekit.yaml /etc/livekit.yaml
CMD ["livekit-server", "--config", "/etc/livekit.yaml"]
