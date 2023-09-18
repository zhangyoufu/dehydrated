# syntax=docker/dockerfile:1

FROM --platform=$BUILDPLATFORM registry.k8s.io/pause:3.9@sha256:7031c1b283388d2c2e09b57badb803c05ebed362dc88d84b480cc47f72a21097 AS pause

FROM --platform=$BUILDPLATFORM alpine:latest@sha256:7144f7bab3d4c2648d7e59409f15ec52a18006a128c733fcff20d3a4a54ba44a
RUN apk --no-cache add bash ca-certificates-bundle curl jq openssl
COPY --from=pause /pause /usr/local/bin/pause
RUN mkdir -p /var/www/dehydrated
COPY dehydrated /usr/local/bin/dehydrated
VOLUME ["/etc/dehydrated"]
WORKDIR /etc/dehydrated
ENTRYPOINT ["dehydrated"]
