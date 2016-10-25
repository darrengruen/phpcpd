# Container from running phpcpd
#
# docker run -it --rm --name phpcpd \
#     -v [path/to/code]:/app \
#     gruen/phpcpd[:tag]
FROM alpine:3.3
MAINTAINER Darren Green <darren@gruen.site>

WORKDIR /usr/local/bin

RUN apk --no-cache --progress --update add ca-certificates wget
RUN wget https://phar.phpunit.de/phpcpd.phar -O phpcpd
RUN chmod 700 ./phpcpd
RUN apk --no-cache --progress --update add php php-phar

VOLUME [ "/app" ]

ENTRYPOINT [ "phpcpd", "/app" ]
