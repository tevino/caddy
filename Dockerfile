FROM alpine:3.7

RUN apk add --no-cache curl bash
RUN curl https://getcaddy.com | bash -s personal http.cache,http.forwardproxy

CMD ["/usr/local/bin/caddy"]
