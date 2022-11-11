# nextcloud specification form

## requirement
### shell scripts
1. 起動
    - 特定の場所を各ユーザが使用するデータの保存場所として指定可能
1. 再起動
    - 再起動時にログイン可能ユーザの情報を引き継ぐ
    - マウント場所を変更せずにアプリケーションを再起動が可能（単純再起動）
    - マウント場所の変更のために、アプリケーションの再起動が可能
1. 初期化
    - ユーザが保存したディレクトリ、ファイルなどを全削除
    - ログイン可能ユーザの全削除
    - ルートユーザの再設定（設定ファイルがあればその情報を使用し、新規作成、なければ設定画面を出す）

### docker image
- すべて公式に配布されるimageを使用する。
- 必要image
    - nextcloud:latest
    - postgres:14.4
    - redis:alpine

### docker-compose file

