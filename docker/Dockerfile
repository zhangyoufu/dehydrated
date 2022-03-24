FROM alpine:latest@sha256:ceeae2849a425ef1a7e591d8288f1a58cdf1f4e8d9da7510e29ea829e61cf512
RUN apk --no-cache add bash ca-certificates-bundle curl jq openssl
COPY dehydrated /usr/local/bin/dehydrated
VOLUME ["/etc/dehydrated"]
WORKDIR /etc/dehydrated
ENTRYPOINT ["dehydrated"]
