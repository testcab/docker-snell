FROM alpine AS download

RUN wget -O- https://dl.nssurge.com/snell/snell-server-v5.0.0-linux-amd64.zip \
  | unzip - \
  && chmod +x snell-server

FROM debian:13-slim
LABEL maintainer="test.cab <snell@test.cab>"

EXPOSE 6160/tcp
EXPOSE 6160/udp

ENTRYPOINT ["/entrypoint.sh"]
COPY entrypoint.sh /entrypoint.sh
COPY --from=download /snell-server /snell-server
