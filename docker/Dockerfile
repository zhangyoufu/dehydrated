FROM alpine:latest@sha256:ec14c7992a97fc11425907e908340c6c3d6ff602f5f13d899e6b7027c9b4133a
RUN apk --no-cache add bash ca-certificates-bundle curl jq openssl
COPY dehydrated /usr/local/bin/dehydrated
VOLUME ["/etc/dehydrated"]
WORKDIR /etc/dehydrated
ENTRYPOINT ["dehydrated"]
