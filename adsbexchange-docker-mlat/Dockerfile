FROM debian:latest
LABEL maintainer="marcelstoer"

ARG MLAT_CLIENT_VERSION=0.2.10
ARG MLAT_CLIENT_TAG=v$MLAT_CLIENT_VERSION

RUN apt-get update && apt-get install -y --no-install-recommends build-essential debhelper python python3-dev socat ntp git ca-certificates \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/adsbxchange/mlat-client.git
WORKDIR /mlat-client
RUN git checkout tags/$MLAT_CLIENT_TAG
RUN dpkg-buildpackage -b -uc 
WORKDIR / 
RUN dpkg -i mlat-client_$MLAT_CLIENT_VERSION*.deb

COPY adsbexchange-mlat.sh /opt

CMD ["/opt/adsbexchange-mlat.sh"]
