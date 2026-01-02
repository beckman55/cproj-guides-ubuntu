#!/usr/bin/env bash
set -euo pipefail

echo "Installing cproj and newproj..."

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SCRIPTS_DIR="$SCRIPT_DIR/scripts"

sudo cp "$SCRIPTS_DIR/cproj" /usr/local/bin/cproj
sudo cp "$SCRIPTS_DIR/newproj" /usr/local/bin/newproj

sudo chmod +x /usr/local/bin/cproj
sudo chmod +x /usr/local/bin/newproj

echo "Done."
