#!/usr/bin/env bash
#
# Sideload Bitcoin Dashboard on an Umbrel host.
#
# This script is for MANUAL installation only — useful while the app is not
# yet listed in a community app store. Run it on the Umbrel host:
#
#   bash install.sh
#
# Once the app is published in a community app store, the recommended
# installation path is the Umbrel UI, NOT this script.

set -euo pipefail

APP_DIR="$HOME/umbrel/app-data/bitcoin-dashboard"
APP_STORE_DIR="$HOME/umbrel/apps/bitcoin-dashboard"
APP_PORT=8767

echo "Installing Bitcoin Dashboard (sideload)..."

mkdir -p "$APP_DIR/html"
cp -r html/* "$APP_DIR/html/"
cp nginx.conf "$APP_DIR/nginx.conf"

mkdir -p "$APP_STORE_DIR"
cp docker-compose.yml "$APP_STORE_DIR/"
cp umbrel-app.yml "$APP_STORE_DIR/"

export APP_DATA_DIR="$APP_DIR"
cd "$APP_STORE_DIR"
docker compose up -d

echo
echo "Bitcoin Dashboard installed."
echo "  Open: http://umbrel.local:${APP_PORT}"
