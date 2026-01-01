#!/bin/bash

GITHUB_USER="yashbhardwaj759"
REPO_NAME="portfolio"

echo "📦 Creating GitHub repository and pushing code..."
echo ""

# Check if repo already exists locally
if git remote get-url origin &>/dev/null; then
    echo "Remote already exists, removing..."
    git remote remove origin
fi

echo "Step 1: Creating repository on GitHub..."
echo "Please create the repository manually:"
echo ""
echo "1. Go to: https://github.com/new"
echo "2. Repository name: portfolio"
echo "3. Make it PUBLIC"
echo "4. DO NOT initialize with README, .gitignore, or license"
echo "5. Click 'Create repository'"
echo ""
read -p "Press Enter after you've created the repository..."

echo ""
echo "Step 2: Adding remote and pushing..."
git remote add origin https://github.com/${GITHUB_USER}/${REPO_NAME}.git
git branch -M main

echo ""
echo "Step 3: Pushing to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Successfully pushed to GitHub!"
    echo ""
    echo "Repository: https://github.com/${GITHUB_USER}/${REPO_NAME}"
    echo ""
    echo "🌐 To get HTTPS link (GitHub Pages):"
    echo "1. Go to: https://github.com/${GITHUB_USER}/${REPO_NAME}/settings/pages"
    echo "2. Source: main branch, / (root)"
    echo "3. Save"
    echo "4. Your site: https://${GITHUB_USER}.github.io/${REPO_NAME}"
else
    echo ""
    echo "❌ Push failed. Check your GitHub credentials."
fi
