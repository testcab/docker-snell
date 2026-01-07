# testcab/snell

[![docker build automated](https://img.shields.io/docker/cloud/automated/testcab/snell.svg)](https://hub.docker.com/r/testcab/snell "testcab/snell")
[![](https://images.microbadger.com/badges/image/testcab/snell.svg)](https://microbadger.com/images/testcab/snell "testcab/snell")

The docker image for [snell](https://kb.nssurge.com/surge-knowledge-base/release-notes/snell).


### Run

```
docker run \
    -d \
    --name=snell \
    --restart=unless-stopped \
    -e SNELL_PSK="SomeRandomPSK!!!" \
    -p 6160:6160/tcp \
    -p 6160:6160/udp \
    testcab/snell
```

### Check logs

```
docker logs snell
```


### Supported tags and respective `Dockerfile` links

* [`5.0.1`, `5.0`, `5.0`, `latest`](https://github.com/testcab/docker-snell/blob/main/Dockerfile)
* [`5.0.0`](https://github.com/testcab/docker-snell/blob/5.0.0/Dockerfile)


### Environment Variables

Env        | Default | Description
---------- | ------- | -----------
SNELL_PORT | 6160    | Snell server listening port.
SNELL_PSK  |         | Pre-Shared Key, if not provided, a random one will be generated.
SNELL_IPV6 | false   | Enable IPv6?


## LICENSE

This repository is licensed under [MIT](LICENSE).
