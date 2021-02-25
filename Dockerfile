ARG ALPINE_VERSION=latest
FROM alpine:${ALPINE_VERSION} AS alpine-core
LABEL maintainer="Edward Hailcrib <ehailcrib@digitdog.io>"

RUN apk update && apk upgrade && apk add --no-cache \
bash \
bash-completion \
sudo \
nano \
zip \
bzip2 \
fontconfig \
wget \
curl \
vim \
'su-exec>=0.2' \
gcc \
make \
htop \
procps \
tcpdump \
rrdtool-dev \
libpcap-dev \
ethtool \
lzo-dev \
screen \
git \
tar \
less \
shadow

RUN rm -rf /var/cache/apk/*
