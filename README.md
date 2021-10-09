# テーブル設計

## users テーブル

| Column              | Type   | Options                   |
| ------------------- | ------ | ------------------------- |
| nickname            | string | null: false               |
| email               | string | null: false, unique: true |
| encrypted_password  | string | null: false               |
| last_name           | string | null: false               |
| first_name          | string | null: false               |
| last_name_furigana  | string | null: false               |
| first_name_furigana | string | null: false               |
| birthday            | date   | null: false               |

### Association

- has_many :items
- has_many :comments
- has_many :cards

## items テーブル

| Column          | Type         | Options                        |
| --------------- | ------------ | ------------------------------ |
| product_name    | string       | null: false                    |
| description     | string       | null: false                    |
| category        | string       | null: false                    |
| condition       | string       | null: false                    |
| shipping_charge | string       | null: false                    |
| days_to_ship    | string       | null: false                    |
| price           | integer      | null: false                    |
| user            | references   | null: false, foreign_key: true |

### Association

- has_many :comments

- belongs_to :user

- has_one :purchase

## comments テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| comments | string     | null: false                    |
| user     | references | null: false, foreign_key: true |
| item     | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item

## cards テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| card_number     | string     | null: false                    |
| expiration_date | date       | null: false                    |
| security_code   | string     | null: false                    |
| user            | references | null: false, foreign_key: true |

### Association

- belongs_to :user

- has_one :purchase

## purchases テーブル

| Column        | Type         | Options                        |
| ------------- | ------------ | ------------------------------ |
| postal_code   | string       | null: false                    |
| prefectures   | string       | null: false                    |
| municipality  | string       | null: false                    |
| house_number  | string       | null: false                    |
| building_name | string       |                                |
| phone_number  | string       | null: false                    |
| item          | references   | null: false, foreign_key: true |
| card          | references   | null: false, foreign_key: true |

### Association

- belongs_to :item
- belongs_to :card