# Container from running phpcpd
#
# docker run -it --rm --name phpcpd \
#     -v [path/to/code]:/app \
#     gruen/phpcpd[:tag]
#
FROM alpine:3.3
MAINTAINER Darren Green <darren@gruen.site>
WORKDIR /usr/local/bin
RUN apk --no-cache --progress --update add \
    wget \
    php \
    php-phar \
    ca-certificates \
    && wget https://phar.phpunit.de/phpcpd.phar -O phpcpd \
    && chmod 700 ./phpcpd
VOLUME [ "/app" ]
ENTRYPOINT [ "phpcpd", "/app" ]
