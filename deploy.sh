#!/usr/bin/env sh

set -e 

npm run docs:build

cd docs/.vuepress/dist

git init
git add -A
git commit -m 'Publish'

git push -f git@github.com:Teleflax/documentation.git master:gh-pages

cd -