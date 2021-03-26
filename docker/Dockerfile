FROM alpine:latest@sha256:826f70e0ac33e99a72cf20fb0571245a8fee52d68cb26d8bc58e53bfa65dcdfa
RUN apk --no-cache add bash ca-certificates-bundle curl jq openssl
COPY dehydrated /usr/local/bin/dehydrated
VOLUME ["/etc/dehydrated"]
WORKDIR /etc/dehydrated
ENTRYPOINT ["dehydrated"]
