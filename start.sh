#!/bin/sh

# Configure thumbor from environment
printenv | grep -f /opt/thumbor-options.conf > /opt/thumbor.conf

exec thumbor -c /opt/thumbor.conf