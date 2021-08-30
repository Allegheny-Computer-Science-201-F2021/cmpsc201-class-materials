FROM ubuntu:18.04
ENV TZ=US/Michigan
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \yes | apt-get update && \
	yes | apt install gcc && \
    yes | apt install build-essential && \
    yes | apt-get install default-jre && \
    yes | apt-get install default-jdk && \
    yes | apt-get install g++ && \
    yes | apt-get -q install mono-complete && \
    yes | apt-get install software-properties-common && \
	add-apt-repository ppa:deadsnakes/ppa && \
	yes | apt-get install python3.8 && \
	yes | apt-get install python3-pip
    
WORKDIR /root
