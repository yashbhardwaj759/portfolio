#!/bin/bash

echo "🚀 Pushing Portfolio to GitHub..."
echo ""

# GitHub username from your profile
GITHUB_USER="yashbhardwaj759"
REPO_NAME="portfolio"

echo "Step 1: Setting up remote repository..."
git remote remove origin 2>/dev/null
git remote add origin https://github.com/${GITHUB_USER}/${REPO_NAME}.git

echo ""
echo "Step 2: Ensuring we're on main branch..."
git branch -M main

echo ""
echo "Step 3: Pushing to GitHub..."
echo "You may be asked for your GitHub username and password/token"
echo ""

git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Successfully pushed to GitHub!"
    echo ""
    echo "Your portfolio is now at:"
    echo "https://github.com/${GITHUB_USER}/${REPO_NAME}"
    echo ""
    echo "To enable GitHub Pages (get HTTPS link):"
    echo "1. Go to: https://github.com/${GITHUB_USER}/${REPO_NAME}/settings/pages"
    echo "2. Under 'Source', select 'main' branch"
    echo "3. Click 'Save'"
    echo "4. Your site will be at: https://${GITHUB_USER}.github.io/${REPO_NAME}"
else
    echo ""
    echo "❌ Push failed. Make sure:"
    echo "1. Repository 'portfolio' exists on GitHub"
    echo "2. You have access to push to it"
    echo "3. You're authenticated (username/password or token)"
fi

