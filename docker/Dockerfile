# syntax=docker/dockerfile:1

FROM --platform=$BUILDPLATFORM registry.k8s.io/pause:3.8@sha256:9001185023633d17a2f98ff69b6ff2615b8ea02a825adffa40422f51dfdcde9d AS pause

FROM --platform=$BUILDPLATFORM alpine:latest@sha256:f271e74b17ced29b915d351685fd4644785c6d1559dd1f2d4189a5e851ef753a
RUN apk --no-cache add bash ca-certificates-bundle curl jq openssl
COPY --from=pause /pause /usr/local/bin/pause
RUN mkdir /var/www/dehydrated
COPY dehydrated /usr/local/bin/dehydrated
VOLUME ["/etc/dehydrated"]
WORKDIR /etc/dehydrated
ENTRYPOINT ["dehydrated"]
