FROM debian:latest
LABEL maintainer="marcelstoer"

RUN apt-get update && apt-get install -y --no-install-recommends socat \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

COPY adsbexchange-feed.sh /opt

CMD ["/opt/adsbexchange-feed.sh"]
