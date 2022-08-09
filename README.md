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
| tittle             | integer    | null: false                    |
| media              | integer    | null: false                    |
| url                | integer    | null: false                    |
| stream             | integer    | null: false                    |
| episode            | integer    | null: false                    |
| favorite           | string     | null: false                    |

### Association

<<<<<<< Updated upstream
- belongs_to :user
=======
- belongs_to :user
>>>>>>> Stashed changes
