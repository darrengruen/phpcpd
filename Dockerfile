# Container from running phpcpd
#
# docker run -it --rm --name phpcpd \
#     -v [path/to/code]:/app \
#     gruen/phpcpd[:tag]
FROM alpine:3.3
MAINTAINER Darren Green <darren@gruen.site>

COPY ./phpcpd.phar /usr/local/bin/phpcpd

RUN apk --no-cache --progress --update add php php-phar

VOLUME [ "/app" ]

ENTRYPOINT [ "phpcpd", "/app" ]
