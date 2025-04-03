#!/bin/bash
# Script to prepare the AstroCalc GitHub Pages version for deployment

# Create a temporary directory for the GitHub Pages files
mkdir -p astro_calc_pages

# Copy all files to the temporary directory
cp -r css js index.html README.md astro_calc_pages/

# Create a .gitignore file
cat > astro_calc_pages/.gitignore << EOL
# OS generated files
.DS_Store
Thumbs.db
desktop.ini

# Editor directories and files
.idea/
.vscode/
*.sublime-workspace
*.sublime-project

# Logs
*.log

# Optional: If you use npm/yarn for any dependencies
node_modules/
package-lock.json
yarn.lock
EOL

# Create a simple package.json if needed
cat > astro_calc_pages/package.json << EOL
{
  "name": "astro-calc-pages",
  "version": "1.0.0",
  "description": "Static web version of AstroCalc for GitHub Pages",
  "scripts": {
    "start": "npx http-server -o"
  },
  "author": "",
  "license": "MIT"
}
EOL

echo "Files prepared for GitHub Pages in the 'astro_calc_pages' directory."
echo "To deploy:"
echo "1. Create a new GitHub repository"
echo "2. Copy all files from the 'astro_calc_pages' directory to the repository"
echo "3. Push to GitHub"
echo "4. Enable GitHub Pages in the repository settings"