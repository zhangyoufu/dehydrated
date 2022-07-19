# syntax=docker/dockerfile:1

FROM --platform=$BUILDPLATFORM registry.k8s.io/pause:3.7@sha256:bb6ed397957e9ca7c65ada0db5c5d1c707c9c8afc80a94acbe69f3ae76988f0c AS pause

FROM --platform=$BUILDPLATFORM alpine:latest@sha256:7580ece7963bfa863801466c0a488f11c86f85d9988051a9f9c68cb27f6b7872
RUN apk --no-cache add bash ca-certificates-bundle curl jq openssl
COPY --from=pause /pause /usr/local/bin/pause
COPY dehydrated /usr/local/bin/dehydrated
VOLUME ["/etc/dehydrated"]
WORKDIR /etc/dehydrated
ENTRYPOINT ["dehydrated"]
