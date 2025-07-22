#!/bin/bash
# Simple script to generate index.html

cat > _build/index.html <<'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <title>IPS9 - Introduction to the Practice of Statistics</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body { 
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Arial, sans-serif;
            max-width: 900px;
            margin: 0 auto;
            padding: 40px 20px;
            line-height: 1.6;
            background-color: #f5f5f5;
        }
        .container {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        h1 { 
            color: #2c3e50; 
            border-bottom: 3px solid #3498db; 
            padding-bottom: 10px;
            margin-bottom: 10px;
        }
        h2 { 
            color: #34495e; 
            margin-top: 30px; 
        }
        .description { 
            color: #7f8c8d; 
            margin: 20px 0;
            font-size: 1.1em;
        }
        ul { 
            list-style-type: none; 
            padding: 0; 
        }
        li { 
            margin: 12px 0;
            padding: 15px;
            background: #f8f9fa;
            border-radius: 5px;
            transition: all 0.3s;
            border-left: 4px solid transparent;
        }
        li:hover { 
            background: #e9ecef;
            border-left-color: #3498db;
            transform: translateX(5px);
        }
        a { 
            color: #3498db; 
            text-decoration: none; 
            font-weight: 500;
            font-size: 1.1em;
        }
        a:hover { 
            text-decoration: underline; 
        }
        footer {
            margin-top: 50px;
            padding-top: 20px;
            border-top: 1px solid #ecf0f1;
            color: #7f8c8d;
            font-size: 0.9em;
            text-align: center;
        }
        .stats {
            margin-top: 20px;
            padding: 10px;
            background: #ecf0f1;
            border-radius: 5px;
            font-size: 0.9em;
            color: #7f8c8d;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>IPS9 - Introduction to the Practice of Statistics</h1>
        <p class="description">
            Worked Jupyter notebook examples from "Introduction to the Practice of Statistics" (9th edition) 
            using Common Lisp and Lisp-Stat. These notebooks demonstrate statistical concepts and analyses 
            implemented in a functional programming paradigm.
        </p>
        
        <h2>📚 Available Notebooks</h2>
        <ul>
EOF

# Add notebook links - look for HTML files in _build directory
cd _build
for htmlfile in *.html; do
    if [ -f "$htmlfile" ] && [ "$htmlfile" != "index.html" ]; then
        name="${htmlfile%.html}"
        # Make the name more readable by replacing underscores with spaces
        display_name=$(echo "$name" | sed 's/_/ /g' | sed 's/\b\(.\)/\u\1/g')
        echo "            <li><a href='${htmlfile}'>📓 ${display_name}</a></li>" >> index.html
    fi
done
cd ..

# Complete the HTML
cat >> _build/index.html <<EOF
        </ul>
        
        <div class="stats">
            📊 Generated on $(date '+%B %d, %Y at %H:%M %Z')<br>
            📁 $(find _build -name "*.html" -not -name "index.html" | wc -l) chapters available
        </div>
    </div>
    
    <footer>
        <p>
            View source on <a href="https://github.com/Lisp-Stat/IPS9">GitHub</a> | 
            Learn more about <a href="https://lisp-stat.dev/">Lisp-Stat</a>
        </p>
    </footer>
</body>
</html>
EOF
