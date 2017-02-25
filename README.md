# gruen/phpcpd

check out the [HPCP homepage](https://github.com/sebastianbergmann/phpcpd) for options and usage

## Run phpcpd in docker container

Run phpcpd on your current work directory
```
docker run \
    -it \
    --rm \
    --name phpcpd_"$(date +%s)" \
    -v "$(pwd)":/app \
    gruen/phpcpd ./
```
The command above will run phpcpd on the current directory (recursively).

For all options and usage for phpcpd, checkout the [github page](https://github.com/sebastianbergmann/phpcpd)
