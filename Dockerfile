FROM livekit/livekit-server:latest AS livekit

FROM alpine:3.19
RUN apk add --no-cache darkhttpd bash

COPY --from=livekit /livekit-server /usr/local/bin/livekit-server
COPY livekit.yaml /etc/livekit.yaml
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
