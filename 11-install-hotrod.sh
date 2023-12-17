#!/bin/sh

# Enable debug output
PS4="\n\033[1;33m>>\033[0m "; set -x

LOCATION=$(realpath "$0")
DIR=$(dirname "$LOCATION")

export HELM_RELEASE=signoz
export SIGNOZ_NAMESPACE=platform

./_11-hotrod-install.sh

unset HELM_RELEASE
unset SIGNOZ_NAMESPACE
