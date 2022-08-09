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
| tittle             | string     | null: false                    |
| media              | string     | null: false                    |
| url                | string     | null: false                    |
| stream             | string     | null: false                    |
| episode            | string     | null: false                    |
| favorite           | string     | null: false                    |
| user               | references | null: false, foreign_key: true |


### Association

- belongs_to :user

