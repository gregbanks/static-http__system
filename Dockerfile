FROM ubuntu:18.04

MAINTAINER Foo Bar (foo@bar.com)

ARG PORT=8787

RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv && \
  rm -rf /var/lib/apt/lists/* && \
  mkdir -p /srv && \
  useradd -M -s /bin/false www

USER www:www

COPY html /srv/html

WORKDIR /srv/html

ENV PORT ${PORT}

EXPOSE ${PORT}/tcp

CMD python -m SimpleHTTPServer ${PORT}
