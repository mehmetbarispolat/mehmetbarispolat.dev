#! /bin/sh

set -e
git checkout --orphan gh-deploy

npm run build

git config --global user.name "mehmetbarispolat" && git config --global user.email "mehmetbarispolat@gmail.com"
git --work-tree dist add --all
git --work-tree dist commit -m 'New Deployment for Production'
git push origin gh-deploy --force
rm -r dist
git checkout -f master

cd -