FROM ubuntu:latest

LABEL maintainer="joseph@josephchoe.com"

RUN apt-get clean && \
  apt-get -y update && \
  apt-get install -y \
  locales \
  git \
  vim && \
  localedef -i en_US -f UTF-8 en_US.UTF-8

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LC_TYPE en_US.UTF-8
ENV TERM xterm-256color

ADD .bash_profile /root/.bash_profile
ADD .gitconfig /root/.gitconfig

ENTRYPOINT ["/bin/bash", "-l"]
