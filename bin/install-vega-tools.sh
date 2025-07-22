#!/bin/bash
# Install Vega-Lite conversion tools

echo "📦 Installing Vega-Lite conversion tools..."

# Check if vl2png already exists
if command -v vl2png &> /dev/null; then
    echo "✅ vl2png already installed"
    exit 0
fi

# Install Canvas dependencies if not already installed
echo "Installing Canvas system dependencies..."
sudo apt-get update && sudo apt-get install -y \
    libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev pkg-config

# Install Node.js via conda if not present
if ! command -v node &> /dev/null; then
    echo "Installing Node.js via conda..."
    conda install -y -c conda-forge nodejs npm
fi

# Install vega-cli, vega-lite, and canvas globally
echo "Installing vega-cli, vega-lite, and canvas..."
npm install -g vega-cli vega-lite canvas

# Verify installation
if command -v vl2png &> /dev/null; then
    echo "✅ vl2png installed successfully"
    vl2png --version
else
    echo "❌ Failed to install vl2png"
    exit 1
fi
