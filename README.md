## README
Amazon Glacierをローカルファイルのバックアップに利用するためのRailsアプリです。
以下の機能を持っています。

- ディレクトリを閲覧し、任意のファイルをバックアップするジョブを実行する
- 複数のファイルを選択し、バックアップジョブの実行キューに追加する
- インベントリ取得ジョブを実行する
- インベントリ取得ジョブ完了時のSNSメッセージを受け取り、Glacierにちゃんとバックアップされているファイルの情報を保存する
- アーカイブ取得ジョブを実行する
- アーカイブ取得ジョブ完了時のSNSメッセージを受け取り、自動で所定のディレクトリにダウンロードする

全ての処理は非同期で実行され、データのアップロードとダウンロードはsidekiqを利用している。

- Ruby version
ruby-2.0.0-p0

- System dependencies
Mac or Linux

- Database
SQLite3

- Configuration
config/settings.yml

```yaml
defaults: &default
  aws_access_key_id: "AWS KEY"
  aws_secret_access_key: "AWS SECRET KEY"
  aws_region: "ap-northeast-1"
  root_dir: "backup target directories root"
  download_dir: <%= Rails.root + "downloads" %>
  vault_name: "VAULT NAME"

development:
  <<: *default

test:
  <<: *default

production:
  <<: *default
```
