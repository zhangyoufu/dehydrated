# Usage

Docker image for [dehydrated](https://github.com/dehydrated-io/dehydrated), available on [Docker Hub](https://hub.docker.com/r/youfu/dehydrated).

* alpine-based
* python3 py-requests for custom hook script
* the only available tag is `latest` which is automatically built against `dehydrated-io/dehydrated:master`

You need to populate dehydrated configuration manually:

* modify config
* modify domains.txt
* create account and accept ToS
* bind-mount your WELLKNOWN path or provide a custom hook script

After that, you can prepare a container with `docker-compose up --no-start` and put `docker start dehydrated` in crontab for automatic certficate renewal.

```
version: '2'
services:
  dehydrated:
    container_name: dehydrated
    image: youfu/dehydrated
    network_mode: host
    volumes:
    - ./data:/etc/dehydrated
    command:
    - --cron
```
