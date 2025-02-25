FROM alpine:3.21

RUN apk add --no-cache php83

RUN adduser -D nonroot \
    && mkdir -p /etc/sudoers.d \
    && echo "nonroot ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/nonroot \
    && chmod 0440 /etc/sudoers.d/nonroot

USER nonroot