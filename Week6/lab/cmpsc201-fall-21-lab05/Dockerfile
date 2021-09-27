FROM ubuntu:20.04
ENV TZ=US/Michigan
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \yes | apt-get update && \
apt-get install -y libedit-dev && \
yes | apt install racket && \
yes | apt install build-essential && \
apt-get install -y ghostscript && \
apt-get install -y libgs-dev && \
apt-get install -y imagemagick
WORKDIR /root