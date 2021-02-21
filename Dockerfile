FROM curlimages/curl:latest
MAINTAINER Alper Kanat <me@alperkan.at>
USER root
RUN apk update \
 && apk add jq \
 && rm -rf /var/cache/apk/*
COPY dyndns.sh /
ENTRYPOINT exec /dyndns.sh
