#!/bin/sh
set -e

if [ "$1" = 'vpnbridge' ]; then
    chown -R softether /usr/vpnbridge
    echo "Starting SoftEther VPN Bridge"
    exec su-exec softether "$@"
    echo "SoftEther VPN Bridge Started"
else
    exec "$@"
fi
