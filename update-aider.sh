#!/bin/bash

# 最新バージョンを取得
LATEST_VERSION=$(curl -s https://aider.chat/HISTORY.html | grep -oP 'Aider v\K\d+\.\d+\.\d+' | head -1)

if [ -z "$LATEST_VERSION" ]; then
    echo "Failed to get latest version"
    exit 1
fi

echo "Latest version: $LATEST_VERSION"

# インストールコマンドを実行
uv tool install git+https://github.com/paul-gauthier/aider.git@v$LATEST_VERSION
