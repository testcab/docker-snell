FROM alpine AS download-amd64
ENV SNELL_ARCH=amd64

FROM alpine AS download-arm64
ENV SNELL_ARCH=aarch64

FROM download-${TARGETARCH} AS download
ARG SNELL_VERSION=4.1.1
RUN wget -O- https://dl.nssurge.com/snell/snell-server-v${SNELL_VERSION}-linux-${SNELL_ARCH}.zip \
  | unzip - \
  && chmod +x snell-server

FROM debian:13-slim
LABEL maintainer="test.cab <snell@test.cab>"

EXPOSE 6160/tcp
EXPOSE 6160/udp

ENTRYPOINT ["/entrypoint.sh"]
COPY entrypoint.sh /entrypoint.sh
COPY --from=download /snell-server /usr/local/bin/snell-server
