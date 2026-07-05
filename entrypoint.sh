#!/usr/bin/env bash

set -euo pipefail

if [ -z "${SNELL_PSK-}" ]; then
	SNELL_PSK=$(head -c 15 /dev/urandom | base64)
	echo "Using generated PSK: $SNELL_PSK"
else
	echo "Using provided PSK in \$SNELL_PSK"
fi

cat <<-EOF > snell-server.conf
	[snell-server]
	listen = 0.0.0.0:${SNELL_PORT:=6160}
	psk = ${SNELL_PSK}
	ipv6 = ${SNELL_IPV6:=false}
EOF

exec /usr/local/bin/snell-server
