FROM alpine:latest
RUN apk --no-cache add bash curl openssl python3 py-requests
COPY dehydrated /usr/local/bin/dehydrated
WORKDIR /etc/dehydrated
ENTRYPOINT ["dehydrated"]
