# syntax=docker/dockerfile:1

FROM --platform=$BUILDPLATFORM registry.k8s.io/pause:3.10@sha256:ee6521f290b2168b6e0935a181d4cff9be1ac3f505666ef0e3c98fae8199917a AS pause

FROM --platform=$BUILDPLATFORM docker.io/library/alpine:latest@sha256:a8560b36e8b8210634f77d9f7f9efd7ffa463e380b75e2e74aff4511df3ef88c
RUN apk --no-cache add bash ca-certificates-bundle curl jq openssl
RUN mkdir -p /var/www/dehydrated
COPY --from=dehydrated --link dehydrated /usr/local/bin/dehydrated
VOLUME ["/etc/dehydrated"]
WORKDIR /etc/dehydrated
ENTRYPOINT ["dehydrated"]
COPY --from=pause --link /pause /usr/local/bin/pause
