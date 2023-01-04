FROM alpine:3.16
LABEL maintainer="nick.grechukh@gmail.com"
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.vcs-url=https://github.com/mgrechukh/docker-rsyncd
RUN apk add --no-cache rsync
ADD rsyncd.conf /etc/rsyncd.conf
VOLUME /data
EXPOSE 873/tcp
CMD ["rsync", "--daemon", "--config=/etc/rsyncd.conf", "--no-detach"]
