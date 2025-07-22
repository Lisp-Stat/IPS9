#!/bin/bash
# Publish to GitHub Pages using ghp-import
set -e

echo "🚀 Publishing to GitHub Pages..."

# Ensure we have the build directory
if [ ! -d "_build" ]; then
    echo "❌ _build directory not found. Run 'make build' first."
    exit 1
fi

# Check if we have HTML files to publish
html_files=$(find _build -name "*.html" -type f | wc -l)
if [ "$html_files" -eq 0 ]; then
    echo "❌ No HTML files found in _build directory. Run 'make build' first."
    exit 1
fi

echo "📁 Found $html_files HTML files to publish:"
find _build -name "*.html" -type f

# Install ghp-import if not available
if ! command -v ghp-import &> /dev/null; then
    echo "📦 Installing ghp-import..."
    pip install ghp-import
fi

# Install Vega tools if needed
if ! command -v vl2png &> /dev/null; then
    echo "📦 Installing Vega conversion tools..."
    ./bin/install-vega-tools.sh
fi

# Convert Vega plots in the built notebooks to PNG
echo "🎨 Converting Vega-Lite plots to PNG..."
vega_count=0
for notebook in _build/*.ipynb; do
    if [ -f "$notebook" ]; then
        echo "  Converting plots in $(basename "$notebook")..."
        ./bin/convert-vega-in-notebook.sh "$notebook"
        vega_count=$((vega_count + 1))
    fi
done

if [ $vega_count -gt 0 ]; then
    echo "✅ Converted Vega plots in $vega_count notebooks"
    
    # Regenerate HTML after Vega conversion
    echo "🔄 Regenerating HTML with embedded PNG plots..."
    for notebook in _build/*.ipynb; do
        if [ -f "$notebook" ]; then
            name=$(basename "$notebook" .ipynb)
            echo "  Converting $name.ipynb to HTML..."
            jupyter nbconvert --to html --template lab --embed-images \
                --output-dir _build --output "$name" "$notebook"
        fi
    done
fi

# Publish to GitHub Pages
echo "📤 Publishing to GitHub Pages..."
ghp-import -n -p -f -m "Update GitHub Pages $(date '+%Y-%m-%d %H:%M')" _build

echo "✅ Successfully published to GitHub Pages!"
echo "🌐 Your site will be available at: https://lisp-stat.github.io/IPS9/"
