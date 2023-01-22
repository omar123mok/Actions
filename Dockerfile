FROM alpine

RUN apk add --no-cache \
        bash           \
        httpie         \
        jq &&          \
        which bash &&  \
        which http &&  \
        which jq

COPY sample_push_event.json /sample_push_event.json

ENTRYPOINT ["entrypoint.sh"]
