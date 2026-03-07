#!/bin/bash

# 获取提交信息，若未传入参数则使用默认信息
COMMIT_MSG=${1:-"更新博客 $(date '+%Y-%m-%d %H:%M:%S')"}

git add .
git commit -m "$COMMIT_MSG"
git push origin master

echo "✅ 部署完成！EdgeOne Pages 正在自动构建..."