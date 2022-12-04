FROM alpine

RUN apk add --no-cache \
        bash           \
        httpie         \
        jq &&          \
        which bash &&  \
        which http &&  \
        which jq

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/bin/docker/entrypoint.sh

COPY sample_push_event.json /sample_push_event.json

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
