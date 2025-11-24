# Container image that runs your code
FROM alpine:3.10
RUN apk update  && sudo apk add --no-cache curl jq 

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]

