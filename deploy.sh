#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e



# 进入生成的文件夹
mkdir frank
cd frank
#创建.nojekyll 防止Github Pages build错误
touch .nojekyll

git init
git add -A
git commit -m 'deploy'

git push -f "https://${GH_TOKEN}@github.com/frank-lam/fullstackl-site.git" master:gh-pages

cd -