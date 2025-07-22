#!/bin/bash
# Convert Vega-Lite plots in a notebook to PNG format

# This script modifies a notebook in-place to add PNG versions of Vega-Lite plots

notebook="$1"
if [ ! -f "$notebook" ]; then
    echo "Usage: $0 <notebook.ipynb>"
    exit 1
fi

echo "Converting Vega-Lite plots in $notebook..."

# Create a Python script inline for simplicity
python3 - "$notebook" <<'EOF'
import json
import sys
import subprocess
import base64
import tempfile
import os

notebook_path = sys.argv[1]

# Load notebook
with open(notebook_path, 'r') as f:
    notebook = json.load(f)

modified = False

# Process each cell
for cell in notebook.get('cells', []):
    if cell['cell_type'] == 'code':
        for output in cell.get('outputs', []):
            if 'data' in output:
                vega_spec = None
                
                # Check for Vega-Lite MIME types
                if 'application/vnd.vegalite.v4+json' in output['data']:
                    vega_spec = output['data']['application/vnd.vegalite.v4+json']
                elif 'application/vnd.vegalite.v3+json' in output['data']:
                    vega_spec = output['data']['application/vnd.vegalite.v3+json']
                
                if vega_spec:
                    # Convert to PNG
                    with tempfile.NamedTemporaryFile(mode='w', suffix='.json', delete=False) as f:
                        json.dump(vega_spec, f)
                        temp_path = f.name
                    
                    png_path = temp_path + '.png'
                    
                    try:
                        # Use vl2png to convert
                        subprocess.run(['vl2png', temp_path, png_path], 
                                     check=True, capture_output=True)
                        
                        # Read PNG and encode as base64
                        with open(png_path, 'rb') as f:
                            png_data = base64.b64encode(f.read()).decode('utf-8')
                        
                        # Add PNG to output
                        output['data']['image/png'] = png_data
                        modified = True
                        print(f"  ✓ Converted Vega-Lite plot")
                        
                    except subprocess.CalledProcessError as e:
                        print(f"  ✗ Failed to convert plot: {e}")
                    finally:
                        # Cleanup
                        os.unlink(temp_path)
                        if os.path.exists(png_path):
                            os.unlink(png_path)

# Save modified notebook
if modified:
    with open(notebook_path, 'w') as f:
        json.dump(notebook, f, indent=2)
    print(f"✅ Updated {notebook_path} with PNG versions")
else:
    print(f"No Vega-Lite plots found in {notebook_path}")

EOF
