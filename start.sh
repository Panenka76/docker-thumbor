#!/bin/sh

# check if we have a secret to include in the config

if [ -f /etc/secrets/thumbor/security-key ]; then
	export SECURITY_KEY=\'`cat /etc/secrets/thumbor/security-key`\'
fi

# Configure thumbor from environment
printenv | grep -f /opt/thumbor-options.conf > /opt/thumbor.conf

exec thumbor -c /opt/thumbor.conf