#! /bin/sh

set -e
git checkout --orphan deploy-branch

npm run build

git config --global user.name "mehmetbarispolat" && git config --global user.email "mehmetbarispolat@gmail.com"
git --work-tree dist add --all
git --work-tree dist commit -m 'New Deployment for Production'
git push -f git@github.com:mehmetbarispolat/mehmetbarispolat.dev.git master:deploy-branch
rm -r dist
git checkout -f master
git branch -D deploy-branch

cd -