FROM alpine
MAINTAINER Raymond Wen

ENV VERSION 0.14.0
RUN apk update && apk add wget certbot openssl ca-certificates haproxy && update-ca-certificates
RUN wget --no-check-certificate https://github.com/kelseyhightower/confd/releases/download/v${VERSION}/confd-${VERSION}-linux-amd64 -O /usr/bin/confd && chmod +x /usr/bin/confd

CMD ["confd"]
