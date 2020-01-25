#!/usr/bin/env sh

# abort on errors
set -e

# npm run build
# cd ./dist/

git branch -D gh-pages
git checkout --orphan gh-pages

git config user.name "imjeen" 
git config user.email "imjeen@sina.com"
git add -A
git commit -m 'deploy'

git push -f git@github.com:imjeen/fireworks.git gh-pages:gh-pages
git log --oneline -20

git checkout master
