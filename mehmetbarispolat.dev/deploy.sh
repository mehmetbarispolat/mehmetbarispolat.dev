#! /bin/sh

set -e
git checkout --orphan deploy-branch

npm run build

cd dist

git config --global user.name "mehmetbarispolat" && git config --global user.email "mehmetbarispolat@gmail.com"
git --work-tree add --all
git --work-tree commit -m 'New Deployment for Production'
git push -f git@github.com:mehmetbarispolat/mehmetbarispolat.dev.git master:deploy-branch
git checkout -f master
git branch -D deploy-branch

cd -