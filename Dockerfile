FROM alpine:3.16
RUN apk add --no-cache rsync
ADD rsyncd.conf /etc/rsyncd.conf
VOLUME /data
EXPOSE 873/tcp
CMD ["rsync", "--daemon", "--config=/etc/rsyncd.conf", "--no-detach"]
