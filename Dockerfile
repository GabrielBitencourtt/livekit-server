FROM livekit/livekit-server:latest AS livekit

FROM caddy:2-alpine
RUN apk add --no-cache bash
COPY --from=livekit /livekit-server /usr/local/bin/livekit-server
COPY livekit.yaml /etc/livekit.yaml
COPY Caddyfile /etc/caddy/Caddyfile
COPY start.sh /start.sh
RUN chmod +x /start.sh
CMD ["/start.sh"]
