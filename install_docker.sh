#!/bin/bash

set -euo pipefail

if [[ "$EUID" -ne 0 ]]; then
    echo "Please run as root (use sudo)."
    exit 1
fi

echo "Updating package lists..."


sudo apt-get update -y

echo "Installing docker.io..."


DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends docker.io && apt-get clean

echo "Docker.io installed successfully."
