#!/usr/bin/env sh

set -x  # 这里是为了看错误日志

rm -rf ./dist

# 打包项目
npm run build

# 进入打包后的文件夹
cd dist

git init
git remote add origin git@github.com:ibeizhu/hulu.git
git checkout -b deploy-pages
git add -A
git commit -m 'auto deploy'

# 将打包后的文件推送到指定分支

git push --set-upstream origin deploy-pages -f
