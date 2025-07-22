# Makefile for IPS9 Jupyter notebooks

# Variables
NOTEBOOKS = $(wildcard *.ipynb)
BUILD_DIR = _build
HTML_FILES = $(NOTEBOOKS:%.ipynb=$(BUILD_DIR)/%.html)

# Default target
all: build

# Build target - execute notebooks, copy them, convert plots, generate HTML
build: execute copy-notebooks convert-plots html index

# Execute notebooks in-place to generate outputs (including Vega plots)
execute:
	@echo "📊 Executing notebooks to generate outputs..."
	@find . -maxdepth 1 -name "*.ipynb" -type f | while read notebook; do \
		echo "  Executing $$notebook..."; \
		jupyter nbconvert --to notebook --execute --inplace "$$notebook"; \
	done
	@echo "✅ Notebooks executed"

# Copy executed notebooks to build directory
copy-notebooks: execute
	@echo "📁 Copying executed notebooks to build directory..."
	@mkdir -p $(BUILD_DIR)
	@find . -maxdepth 1 -name "*.ipynb" -type f -exec cp {} $(BUILD_DIR)/ \;
	@echo "✅ Notebooks copied to $(BUILD_DIR)"

# Convert Vega plots in the copied notebooks to PNG
convert-plots: copy-notebooks
	@echo "🎨 Converting Vega-Lite plots to PNG..."
	@if command -v vl2png >/dev/null 2>&1; then \
		for notebook in $(BUILD_DIR)/*.ipynb; do \
			if [ -f "$$notebook" ]; then \
				echo "  Converting plots in $$(basename "$$notebook")..."; \
				./bin/convert-vega-in-notebook.sh "$$notebook"; \
			fi; \
		done; \
		echo "✅ Vega plots converted"; \
	else \
		echo "⚠️  vl2png not found, skipping Vega conversion"; \
		echo "   Run './bin/install-vega-tools.sh' to install Vega tools"; \
	fi

# Generate HTML from the processed notebooks
html: convert-plots
	@echo "📄 Converting notebooks to HTML..."
	@for notebook in $(BUILD_DIR)/*.ipynb; do \
		if [ -f "$$notebook" ]; then \
			name=$$(basename "$$notebook" .ipynb); \
			echo "  Converting $$name.ipynb to HTML..."; \
			jupyter nbconvert --to html --template lab --embed-images \
				--output-dir $(BUILD_DIR) --output "$$name" "$$notebook"; \
		fi; \
	done
	@echo "✅ HTML files generated"

# Generate index page
index: 
	@echo "📋 Generating index page..."
	@./bin/build-index.sh
	@echo "✅ Index page generated"

# Clean build artifacts
clean:
	@echo "🧹 Cleaning build directory..."
	@rm -rf $(BUILD_DIR)
	@echo "✅ Build directory cleaned"

# Preview locally
preview: build
	@echo "🌐 Starting local preview server..."
	@echo "📁 Serving files from $(BUILD_DIR)"
	@echo "🔗 Open http://localhost:8080 in your browser"
	@echo "⏹️  Press Ctrl+C to stop the server"
	@cd $(BUILD_DIR) && python3 -m http.server 8080

# Publish to GitHub Pages
publish:
	@echo "🚀 Publishing to GitHub Pages..."
	@./bin/publish-pages.sh

# Help target
help:
	@echo "Available targets:"
	@echo "  build    - Execute notebooks, convert plots, and generate HTML"
	@echo "  execute  - Execute notebooks in-place to generate outputs"
	@echo "  html     - Convert notebooks to HTML (after plot conversion)"
	@echo "  index    - Generate index page"
	@echo "  clean    - Remove build directory"
	@echo "  preview  - Build and start local preview server"
	@echo "  publish  - Publish to GitHub Pages using ghp-import"
	@echo "  help     - Show this help message"
	@echo ""
	@echo "Scripts are located in bin/ directory:"
	@echo "  bin/install-vega-tools.sh     - Install Vega conversion tools"
	@echo "  bin/convert-vega-in-notebook.sh - Convert Vega plots to PNG"
	@echo "  bin/build-index.sh            - Generate index page"
	@echo "  bin/publish-pages.sh          - Publish to GitHub Pages"

.PHONY: all build execute copy-notebooks convert-plots html index clean preview publish help
