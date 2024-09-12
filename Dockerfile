FROM alpine:3
LABEL org.opencontainers.image.authors="Francois Billant <fbillant@gmail.com>"

ENV MOLECULE_VERSION=24.9.0

RUN apk add --no-cache python3 py3-pip docker-cli rsync

RUN pip3 install --break-system-packages molecule==$MOLECULE_VERSION molecule[docker] molecule-plugins[docker]

ENV ANSIBLE_FORCE_COLOR=1

VOLUME /data

WORKDIR /data

ENTRYPOINT [ "molecule" ]
