# プロジェクト名

## 概要

### バージョン情報
- ruby : 3.1.4
- Rails: 7.0.8
- MySQL: 8.0.33

## 環境構築手順

このプロジェクトはDockerを使用しており、開発環境の構築は以下の手順で行います。

### 環境構築

1. Dockerビルド
```sh
docker compose build
```

2. コンテナー起動
```sh
docker compose up
```

3. ridgepole実行（DB）
```sh
docker compose exec web bundle exec ridgepole --config ./config/database.yml --file ./db/Schemafile --apply
```

4. localhost:3000接続で最終確認

## コマンド
- ridgepole実行
```sh
docker compose exec web bundle exec ridgepole --config ./config/database.yml --file ./db/Schemafile --apply
```

- Railsコンテナーに接続
```sh
docker compose exec -it web bash
```
