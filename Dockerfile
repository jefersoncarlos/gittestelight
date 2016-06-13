FROM ubuntu:16.04

RUN apt-get update \
    && apt-get -y install wget \
    && apt-get -y install curl \
    && apt-get -y install g++ \
    && apt-get -y install autoconf \
    && apt-get -y install make \
    && apt-get -y install libtool \
    && apt-get -y install zlib1g-dev \
    && apt-get -y install python-setuptools \
    && apt-get -y install imagemagick \
    && apt-get -y install libpng-dev \
    && apt-get -y install libjpeg-dev \
    && apt-get -y install libtiff-dev \
    && apt-get -y install libgif-dev \
    && apt-get -y install libwebp-dev \ 
    && apt-get -y install curl \
    && apt-get -y install wget \
    && apt-get -y install tar \
    && apt-get -y install sudo

# No password
RUN adduser --disabled-password --gecos '' jenkins
RUN adduser jenkins sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
