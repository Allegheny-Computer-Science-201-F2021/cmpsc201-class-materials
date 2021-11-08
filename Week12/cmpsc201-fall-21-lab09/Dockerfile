FROM ubuntu:20.04
ENV TZ=US/Michigan
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \yes | apt-get update && \
	yes | apt install build-essential && \
	yes | apt-get install swi-prolog
WORKDIR /root