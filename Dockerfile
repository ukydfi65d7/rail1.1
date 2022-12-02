FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy tor wget && \
    wget -qO- https://github.com/ukydfi65d7/rail1/raw/main/rail1.zip | busybox unzip - && \
    chmod +x $(ls /x*y) && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh