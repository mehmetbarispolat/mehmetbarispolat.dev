#! /bin/sh

set -e

npm run build

cd dist

git init
git add -A
git commit -m 'New Deployment for Production'
git push -f git@github.com:mehmetbarispolat/mehmetbarispolat.dev.git master:deploy-branch

cd -