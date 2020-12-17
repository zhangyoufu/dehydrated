FROM alpine:latest@sha256:074d3636ebda6dd446d0d00304c4454f468237fdacf08fb0eeac90bdbfa1bac7
RUN apk --no-cache add bash curl dropbear-ssh openssl python3 py-requests
COPY dehydrated /usr/local/bin/dehydrated
VOLUME ["/etc/dehydrated"]
WORKDIR /etc/dehydrated
ENTRYPOINT ["dehydrated"]
