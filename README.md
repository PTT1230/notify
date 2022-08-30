# テーブル設計

## users テーブル

| Column                | Type    | Options                   |
| --------------------- | ------- | ------------------------- |
| email                 | string  | null: false, unique: true |
| encrypted_password    | string  | null: false               |


### Association

- has_many :contents


## contents テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| title              | string     | null: false                    |
| media              | integer    | null: false                    |
| url                | string     |                                |
| week               | integer    | null: false                    |
| episode            | string     |                                |
| notify             | integer    | null: false                    |
| user               | references | null: false, foreign_key: true |


### Association

- belongs_to :user


## lintのcheck用

- yarn lint:stylesheet
- erblint --lint-all -a
- bundle exec rubocop -a


# タイトル
Notiｆｙ

# 概要
- 複数のサブスク動画配信サービス（VOD）で番組を視聴しており最新話探しに手間取っている人に向けて視聴リストの管理と最新話の通知機能を提供する
- 見ている番組をアプリ上に登録して管理できる
- LINE連携で放送日にLINEでおしらせする

# 本番環境
## URL
https://notify-38221.herokuapp.com/
## テスト用アカウント
### メールアドレス
- aa@aa
### パスワード
- aaaaa1

# 機能一覧
1. ログイン/ログアウト機能
- 新規登録機能
- LINEログイン（メールアドレスとパスワードを自動生成し、登録者のline_uidをuidカラムに保存）
- メールアドレスとパスワードによるログイン機能
2. 番組の登録、編集
- 配信メディア、配信曜日、通知の有無はリストから選択して登録できる
- タイトル、再生URL、メモは入力フォームから登録
- LINE通知オン/オフの切り替え
- タイトルリストからの削除/編集ページヘのリンク
3. マイページからマイリストを一覧表示
4.LINE通知機能
タイトル一覧ページでLINE通知をオンにし、LINE公式アカウントを友達追加後、LINEログインもしくはアカウント連携を行うことで通知が開始される


# 使用技術
- Ruby
- Ruby on Rails
- MySQL
- Github
- Visual Studio Code
- Heroku
- JQuery
# 主なgem
- devise :ログイン
- rails_admin :管理画面
- whenever :cronの実行
- omniauth-line :LINEログイン
- line-bot-api :LINEプッシュ通知

# 背景
様々なサブスクを使って番組を見ていると、どこで見ている作品でいつ更新か忘れてしまうことが多くありました。そこで更新日にLINEで通知が来たら管理しやすいと思い、
たくさんの番組を見ている人へ見やすく管理できるアプリを作りたいと思い作成に至りました。

現代はレンタルビデオを借りに行く手間もなく、手軽に大量のコンテンツを消費できる時代です。コロナ禍で家にいる時間も増え、今では動画配信サービスは自分とって欠かせないサービスです。
私以外にもVODの視聴が生活の一部になっている方も多いのではないでしょうか。

素晴らしい作品を更に多くの人に見てもらいたいし、クリエイターの方が情熱を注いで作った番組を応援したいという気持ちもあります。

私のようにいろいろなサブスクから作品をみていて管理が苦手な方に
このアプリでVODの視聴を更に楽しんでいただきたいです。
