FROM alpine:latest@sha256:d0710affa17fad5f466a70159cc458227bd25d4afb39514ef662ead3e6c99515
RUN apk --no-cache add bash ca-certificates-bundle curl openssl
COPY dehydrated /usr/local/bin/dehydrated
VOLUME ["/etc/dehydrated"]
WORKDIR /etc/dehydrated
ENTRYPOINT ["dehydrated"]
