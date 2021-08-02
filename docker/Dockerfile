FROM alpine:latest@sha256:adab3844f497ab9171f070d4cae4114b5aec565ac772e2f2579405b78be67c96
RUN apk --no-cache add bash ca-certificates-bundle curl jq openssl
COPY dehydrated /usr/local/bin/dehydrated
VOLUME ["/etc/dehydrated"]
WORKDIR /etc/dehydrated
ENTRYPOINT ["dehydrated"]
