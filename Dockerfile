FROM alpine AS download

ARG SNELL_VERSION=5.0.1
RUN wget -O- https://dl.nssurge.com/snell/snell-server-v${SNELL_VERSION}-linux-amd64.zip \
  | unzip - \
  && chmod +x snell-server

FROM debian:13-slim
LABEL maintainer="test.cab <snell@test.cab>"

EXPOSE 6160/tcp
EXPOSE 6160/udp

ENTRYPOINT ["/entrypoint.sh"]
COPY entrypoint.sh /entrypoint.sh
COPY --from=download /snell-server /snell-server
