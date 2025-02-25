FROM alpine:3.21

RUN apk add --no-cache php83 php83-dom php83-gd php83-pdo php83-session php83-simplexml php83-tokenizer php83-xml

RUN adduser -D nonroot \
    && mkdir -p /etc/sudoers.d \
    && echo "nonroot ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/nonroot \
    && chmod 0440 /etc/sudoers.d/nonroot

USER nonroot