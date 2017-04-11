#!/bin/sh
set -e

if [ "$1" = '/usr/vpnbridge/vpnbridge' ]; then
    chown -R softether:softether /usr/vpnbridge
    setcap 'cap_net_bind_service=+ep' /usr/vpnbridge/vpnbridge

    echo "Starting SoftEther VPN Bridge"
    exec su-exec softether sh -c "`echo $@`"
else
    exec "$@"
fi
