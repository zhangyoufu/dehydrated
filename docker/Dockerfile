FROM alpine:latest@sha256:39eda93d15866957feaee28f8fc5adb545276a64147445c64992ef69804dbf01
RUN apk --no-cache add bash curl dropbear-ssh openssl python3 py-requests
COPY dehydrated /usr/local/bin/dehydrated
VOLUME ["/etc/dehydrated"]
WORKDIR /etc/dehydrated
ENTRYPOINT ["dehydrated"]
