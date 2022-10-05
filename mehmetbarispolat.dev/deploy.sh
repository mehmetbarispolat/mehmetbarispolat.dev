#! /bin/sh

set -e

npm run build

cd dist

git config --global user.name "mehmetbarispolat" && git config --global user.email "mehmetbarispolat@gmail.com"
git add -A
git commit -m 'New Deployment for Production'
git push -f git@github.com:mehmetbarispolat/mehmetbarispolat.dev.git master:deploy-branch

cd -