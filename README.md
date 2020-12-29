# Usage

Docker image for [dehydrated](https://github.com/dehydrated-io/dehydrated), available on [Docker Hub](https://hub.docker.com/r/youfu/dehydrated).

* alpine-based
* the only available tag is `latest` which is automatically built against `dehydrated-io/dehydrated:master`

You need to populate dehydrated configuration manually:

* modify config
* modify domains.txt
* create account and accept ToS
* bind-mount your WELLKNOWN path or provide a custom hook script
