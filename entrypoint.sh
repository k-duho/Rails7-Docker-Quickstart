#!/bin/bash
set -e

if ! bundle exec rake db:exists; then
  echo "データベースが存在しません。作成します。"
  bundle exec rake db:create
fi

# データベースマイグレーション
bundle exec rake db:migrate

# Rails に対応したファイル server.pid が存在しているかもしれないので削除する。
rm -f /myapp/tmp/pids/server.pid

# コンテナーのプロセスを実行する。（Dockerfile 内の CMD に設定されているもの。）
exec "$@"
