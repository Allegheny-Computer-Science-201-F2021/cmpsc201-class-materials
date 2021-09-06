FROM ubuntu:18.04
RUN apt-get update && \
apt-get install -y vim && \
apt-get install -y nano && \
apt-get install -y x11vnc xvfb && \
apt-get install -y wget && \
apt-get install -y unzip && \
apt-get install -y git && \
apt-get install -y openjdk-8-jdk && \
yes | apt-get install software-properties-common && \
add-apt-repository ppa:deadsnakes/ppa && \
yes | apt-get install python3.8 && \
yes | apt-get install python3-pip && \
mkdir tools
ADD https://www.cs.allegheny.edu/sites/amohan/upload/jbe.zip /tools/
RUN unzip tools/jbe.zip -d "tools/" && \
mkdir ~/.vnc && \
x11vnc -storepasswd 1234 ~/.vnc/passwd
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
RUN chmod +x /entrypoint.sh 
WORKDIR /root
