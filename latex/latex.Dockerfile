ARG UBUNTU_TAG=focal
FROM ubuntu:$UBUNTU_TAG

ENV TIMEZONE=Europe/Warsaw
ENV DEBIAN_FRONTEND noninteractive
RUN ln -snf /usr/share/zoneinfo/$TIMEZONE /etc/localtime && echo $TIMEZONE > /etc/timezone

RUN apt update -q

RUN apt install -y texlive-full

WORKDIR /workspace