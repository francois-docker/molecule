FROM alpine:3
MAINTAINER Francois Billant <fbillant@gmail.com>

ENV MOLECULE_VERSION=5.0.1

RUN apk add --no-cache python3 py3-pip docker-cli rsync

RUN pip3 install molecule==$MOLECULE_VERSION molecule[docker] molecule-plugins[docker]

ENV ANSIBLE_FORCE_COLOR=1

VOLUME /data

WORKDIR /data

ENTRYPOINT [ "molecule" ]
