#!/bin/sh

# Enable debug output
PS4="\n\033[1;33m>>\033[0m "; set -x

LOCATION=$(realpath "$0")
DIR=$(dirname "$LOCATION")

helm repo add signoz https://charts.signoz.io

helm upgrade --install --create-namespace -n signoz signoz signoz/signoz
