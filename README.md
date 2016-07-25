# gruen/phpcpd

## Run phpcpd in docker container

Run phpcpd on your current work directory
```
docker run -it --rm -name phpcpd \
    -v "$(pwd)":/app \
    gruen/phpcpd
```
