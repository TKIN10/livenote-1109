# テーブル設計

## users テーブル

| Column             | Type   | Options                  |
| ------------------ | ------ | ------------------------ |
| email              | string | null: false,unique: true |
| encrypted_password | string | null: false              |
| name               | string | null: false              |
| profile            | text   | null: false              |


## comments テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| live_name | text       | null: false                    |
| content   | text       | null: false                    |
| cost      | text       | null: false                    |
| user      | references | null: false, foreign_key: true |
| venue     | references | null: false, foreign_key: true |


## venues テーブル

| Column        | Type       | Options                  |
| ------------- | ---------- | ------------------------ |
| title         | string     | null: false              |
| user          | references | null: false, foreign_key: true |