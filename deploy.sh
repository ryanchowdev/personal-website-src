#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'Deploy'

# deploying to ryanchowdev.github.io
git push -f git@github.com:ryanchowdev/ryanchowdev.github.io.git master

cd -