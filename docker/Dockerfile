FROM alpine:latest@sha256:5ff4307e7a2602c646c7ea12b1fa220c32cfc377a17e2cc7922a638ff62e50d5
RUN apk --no-cache add bash ca-certificates-bundle curl jq openssl
COPY dehydrated /usr/local/bin/dehydrated
VOLUME ["/etc/dehydrated"]
WORKDIR /etc/dehydrated
ENTRYPOINT ["dehydrated"]
