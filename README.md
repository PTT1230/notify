# テーブル設計

## users テーブル

| Column                | Type    | Options                   |
| --------------------- | ------- | ------------------------- |
| email                 | string  | null: false, unique: true |
| encrypted_password    | string  | null: false               |


### Association

- has_many :favorites
- has_many :lineflags


## favorites テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| content            | references | null: false, foreign_key: true |

### Association

- belongs_to :content
- belongs_to :user
- has_one :lineflag


## lineflags テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| mylist             | references | null: false, foreign_key: true |

### Association

- belongs_to :favorite
- belongs_to :user


## contents テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| tittle             | integer    | null: false                    |
| media              | integer    | null: false                    |
| url                | integer    | null: false                    |
| update_day         | integer    | null: false                    |
| episode            | integer    | null: false                    |
| season             | string     | null: false                    |

### Association

- has_one :favorite
