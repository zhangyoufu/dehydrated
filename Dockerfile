FROM docker.io/library/alpine:latest
RUN apk --no-cache add bash ca-certificates-bundle curl jq openssl
RUN mkdir -p /var/www/dehydrated
COPY --link dehydrated/dehydrated /usr/local/bin/dehydrated
VOLUME ["/etc/dehydrated"]
WORKDIR /etc/dehydrated
ENTRYPOINT ["dehydrated"]
