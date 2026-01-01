#!/bin/bash

echo "🚀 Deploying Portfolio to GitHub Pages..."
echo ""
echo "Step 1: Initializing Git repository..."
git init

echo ""
echo "Step 2: Adding all files..."
git add .

echo ""
echo "Step 3: Creating initial commit..."
git commit -m "Initial commit - Portfolio website"

echo ""
echo "✅ Files are ready for GitHub!"
echo ""
echo "Next steps:"
echo "1. Go to https://github.com and create a new repository"
echo "2. Name it: portfolio (or any name you like)"
echo "3. Don't initialize with README"
echo "4. Run these commands:"
echo ""
echo "   git remote add origin https://github.com/YOUR_USERNAME/portfolio.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "5. Go to repository Settings → Pages"
echo "6. Select 'main' branch and '/ (root)' folder"
echo "7. Save - Your site will be live at: https://YOUR_USERNAME.github.io/portfolio"
echo ""

