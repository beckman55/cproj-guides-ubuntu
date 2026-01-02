#!/usr/bin/env bash
set -euo pipefail

echo "Installing cproj and newproj..."

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SCRIPTS_DIR="$SCRIPT_DIR/scripts"
TEMPLATES_DIR="$SCRIPT_DIR/templates"

# Install scripts
echo "Installing scripts to /usr/local/bin..."
sudo cp "$SCRIPTS_DIR/cproj" /usr/local/bin/cproj
sudo cp "$SCRIPTS_DIR/newproj" /usr/local/bin/newproj
sudo chmod +x /usr/local/bin/cproj
sudo chmod +x /usr/local/bin/newproj

# Install templates
echo "Installing templates to ~/dev/projects/templates..."
mkdir -p "$HOME/dev/projects/templates"
if [ -d "$TEMPLATES_DIR" ]; then
  cp -r "$TEMPLATES_DIR"/* "$HOME/dev/projects/templates/"
  echo "Templates installed successfully"
else
  echo "Warning: templates directory not found, skipping template installation"
fi

echo ""
echo "Installation complete!"
echo ""
echo "Usage:"
echo "  cproj MyDevProject           # Create development project"
echo "  cproj MyResearch --research  # Create research project"
