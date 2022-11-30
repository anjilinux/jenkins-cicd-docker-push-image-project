FROM ubuntu 

RUN apt-get update -y && apt-get install -y \
    unzip \
    wget \
    default-jre \                   