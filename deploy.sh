#!/bin/bash

COMMIT_MSG=${1:-"更新博客 $(date '+%Y-%m-%d %H:%M:%S')"}

git pull origin master --rebase
git add .
git commit -m "$COMMIT_MSG"
git push origin master

echo "✅ 部署完成！EdgeOne Pages 正在自动构建..."