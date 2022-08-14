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



## yarn lint:stylesheet
