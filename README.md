# Notify

# 概要
- 見ている番組をアプリ上に登録して管理できるアプリです
- 複数のサブスク動画配信サービス（VOD）で番組を視聴しており、最新話探しに手間取っている人に向けて視聴リストの管理と最新話の通知機能を提供します
- レスポンシブ対応しているのでスマホからもご確認いただけます
- LINEで連携することで放送日にLINEでおしらせします(今後実装予定)

# 制作背景
様々なサブスクを利用して番組を見ていると、どこで見ていていつ更新か忘れてしまうことが多くありました。そこで更新日にLINEで通知が来たら管理しやすいと思い、
たくさんの番組を見ている人へ見やすく管理できるアプリを作りたいと思い作成に至りました。

現代はレンタルビデオを借りに行く手間もなく、手軽に大量のコンテンツを消費できる時代です。コロナ禍で家にいる時間も増え、今では動画配信サービスは自分とっては欠かせないサービスになっています。
私以外にもVODの視聴が生活の一部になっている方も多いのではないでしょうか。

素晴らしい作品を更に多くの人に見てもらいたいし、自分の好きな番組や製作者さんを応援したいという気持ちもあります。
私のようにいろいろなサブスクから作品をみていて管理が苦手な方にこのアプリでVODの視聴を更に楽しんでいただきたいです。

# 工夫したポイント
- ユーザーが忘れないようにする仕組み
LINEにて定期的に、お知らせをすることにしました。
- シンプルなデザイン
シンプルにすることで、ユーザーが迷うことなく使用できるようにしました。
- スマホに対応にする
スマホ利用が多いのでレスポンシブデザインを使用しました。

# 機能一覧
1. ログイン/ログアウト機能
- 新規登録機能
- ユーザー情報編集機能
- 退会機能
- LINEログイン（メールアドレスとパスワードを自動生成し、登録者のline_uidをuidカラムに保存）
- メールアドレスとパスワードによるログイン機能
2. 番組の登録、編集
- 配信メディア、配信曜日、通知の有無はリストから選択して登録できる
- タイトルは入力フォームから登録
- LINE通知オン/オフの切り替え
- タイトルリスト、マイページから一覧表示と削除/編集ページヘのリンク
3. LINE通知機能
- タイトル一覧ページでLINE通知をオンにし、LINE公式アカウントを友達追加後、LINEログインもしくはアカウント連携を行うことで通知が開始される（今後実装予定）
4. メディアクエリでレスポンシブデザイン

# 未実装項目（今後実装予定）
- トップページの表示画面を曜日ごとやその日の放送番組などで切り替える
- 番組表からデータを収集して放送予定の番組名と番組内容からキーワード検索できるようにする
- テストコードでのチェック

# DEMO
## トップページ
https://user-images.githubusercontent.com/108722053/189515199-ca6aca40-42bd-4105-92c0-023dc02347b7.mp4

## ログインページ
https://user-images.githubusercontent.com/108722053/189515752-6bd62173-8909-4098-9d13-a9350e8a29f4.mp4

## LINEログイン
https://user-images.githubusercontent.com/108722053/189515870-39e252b8-8ede-4101-8187-e144bca3c67d.mp4

## コンテンツ登録ページ
https://user-images.githubusercontent.com/108722053/189517162-d8da0c9e-0a05-4217-abf3-972f86f7eedf.mp4

# 本番環境
## URL
https://notify-38221.herokuapp.com/

## テスト用アカウント
### メールアドレス
- aa@aa
### パスワード
- aaaaa1

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
- omniauth-line :LINEログイン
- dotenv-rails :パスワード非公開
- whenever :cronの実行
- line-bot-api :LINEプッシュ通知
- rubocop :lint用
- rails-i18n :言語を日本語化

# テーブル設計
## users テーブル
| Column                | Type    | Options                   |
| --------------------- | ------- | ------------------------- |
| email                 | string  | null: false, unique: true |
| encrypted_password    | string  | null: false               |
| nickname              | string  | null: false               |

### Association
- has_many :contents


## contents テーブル
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| title              | string     | null: false                    |
| media              | integer    | null: false                    |
| week               | integer    | null: false                    |
| notify             | integer    | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association
- belongs_to :user


## lintのcheck用
- yarn lint:stylesheet
- erblint --lint-all -a
- bundle exec rubocop -a