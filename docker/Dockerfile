FROM alpine:latest@sha256:25f5332d060da2c7ea2c8a85d2eac623bd0b5f97d508b165f846c7d172897438
RUN apk --no-cache add bash curl dropbear-ssh openssl python3 py-requests
COPY dehydrated /usr/local/bin/dehydrated
VOLUME ["/etc/dehydrated"]
WORKDIR /etc/dehydrated
ENTRYPOINT ["dehydrated"]
