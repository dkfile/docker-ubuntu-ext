FROM ubuntu

COPY ./upload/* /opt/

RUN cd /opt/ && \
  # mv /opt/apt.conf /etc/apt/apt.conf && \
  rm /etc/apt/sources.list && \
  mv /opt/sources.list /etc/apt/ && \
  apt-get update && \
  ls

RUN apt-get install wget -y && \
  which wget && \ 
  ls

RUN apt-get install openjdk-7-jdk -y && \
  which java && \ 
  ls

RUN apt-get install -y --force-yes unzip curl git docker.io jq && \
  which docker && \ 
  ls