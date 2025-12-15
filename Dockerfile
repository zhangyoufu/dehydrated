# syntax=docker/dockerfile:1
FROM docker.io/library/alpine:latest@sha256:51183f2cfa6320055da30872f211093f9ff1d3cf06f39a0bdb212314c5dc7375
RUN apk --no-cache add bash ca-certificates-bundle curl jq openssl
RUN mkdir -p /var/www/dehydrated
COPY --from=dehydrated --link dehydrated /usr/local/bin/dehydrated
VOLUME ["/etc/dehydrated"]
WORKDIR /etc/dehydrated
ENTRYPOINT ["dehydrated"]
