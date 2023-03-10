#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# Push modifications
git add -A
git commit -m 'deploy'
git push -f git@github.com:imanemessak/vue-app-gp.git main:main

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:imanemessak/vue-app-gp.git main:main
cd ..