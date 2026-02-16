FROM livekit/livekit-server:latest AS livekit
FROM livekit/egress:latest AS egress

FROM ubuntu:22.04

RUN apt-get update && apt-get install -y bash

COPY --from=livekit /livekit-server /usr/local/bin/livekit-server
COPY --from=egress / /

COPY livekit.yaml /etc/livekit.yaml
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
