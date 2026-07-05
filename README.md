# testcab/snell-server

[![Docker Image Size](https://img.shields.io/docker/image-size/testcab/snell-server)](https://hub.docker.com/r/testcab/snell-server "testcab/snell-server")

The docker image for [snell-server](https://kb.nssurge.com/surge-knowledge-base/release-notes/snell).


### Run with Environment Variables

```
docker run \
    -d \
    --name=snell-server \
    --restart=unless-stopped \
    -e SNELL_PSK="SomeRandomPSK!!!" \
    -p 6160:6160/tcp \
    -p 6160:6160/udp \
    testcab/snell-server
```

### Run with config file

```
docker run \
    -d \
    --name=snell-server \
    --restart=unless-stopped \
    -v $PWD/snell-server.conf:/snell-server.conf \
    -p 6160:6160/tcp \
    -p 6160:6160/udp \
    testcab/snell-server
```

### Check logs

```
docker logs snell-server
```


### Supported tags and respective `Dockerfile` links

* [`5.0.1`, `5.0`, `5`, `latest`](https://github.com/testcab/docker-snell-server/blob/main/Dockerfile)
* [`5.0.0`](https://github.com/testcab/docker-snell-server/blob/5.0.0/Dockerfile)
* [`4.1.1`, `4.1`, `4`](https://github.com/testcab/docker-snell-server/blob/4.1.1/Dockerfile)
* [`4.1.0`](https://github.com/testcab/docker-snell-server/blob/4.1.0/Dockerfile)
* [`4.0.1`, `4.0`](https://github.com/testcab/docker-snell-server/blob/4.0.1/Dockerfile)


### Environment Variables

The following variables are used if no `snell-server.conf` are mounted in to the container at its working directory (`/` by default).

Env        | Default | Description
---------- | ------- | -----------
SNELL_PORT | 6160    | Snell server listening port.
SNELL_PSK  |         | Pre-Shared Key, if not provided, a random one will be generated.
SNELL_IPV6 | false   | Enable IPv6?


## LICENSE

This repository is licensed under [MIT](LICENSE).
