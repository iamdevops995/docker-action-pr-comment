# Container image that runs your code
FROM alpine:3.10
RUN apk update  && apk add --no-cache curl jq 

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh
RUN pwd && ls -lrth
#
# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]


