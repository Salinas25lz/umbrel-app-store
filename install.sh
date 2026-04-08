#!/bin/bash
# Install Bitcoin Dashboard on Umbrel
# Run this on the Umbrel host with: bash install.sh

set -e

APP_DIR="$HOME/umbrel/app-data/bitcoin-dashboard"
APP_STORE_DIR="$HOME/umbrel/apps/bitcoin-dashboard"

echo "📦 Instalando Bitcoin Dashboard..."

# Create app data dir with HTML
mkdir -p "$APP_DIR/html"
cp -r html/* "$APP_DIR/html/"

# Create app dir in Umbrel apps
mkdir -p "$APP_STORE_DIR"
cp docker-compose.yml "$APP_STORE_DIR/"
cp umbrel-app.yml "$APP_STORE_DIR/"

# Set APP_DATA_DIR and start
export APP_DATA_DIR="$APP_DIR"
cd "$APP_STORE_DIR"
docker-compose up -d

echo ""
echo "✅ Bitcoin Dashboard instalado!"
echo "   Abre: http://umbrel.local:8765"
