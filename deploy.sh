#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist && cp index.html 404.html

# place .nojekyll to bypass Jekyll processing
echo > .nojekyll

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git checkout -B main
git add -A
git commit -m 'deploy'

# if you are deploying to https://yichienlu.github.io
# git push -f git@github.com:yichienlu/yichienlu.github.io.git main

# if you are deploying to https://yichienlu.github.io/vite-deploy-sample
git push -f git@github.com:yichienlu/vite-deploy-sample.git main:gh-pages

cd -