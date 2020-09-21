# アプリケーション名 / original-app-28111
<br>
<br>

# アプリケーション概要

- コーディネイトと売買を併せ持ったアプリケーションになります。
  コンセプトは中年層の方でも手軽に楽しんでいただけるようデザインになっており、
  コーディネイトを可視化することでイメージが沸くようになっています。
  決済はクレジットカードでのお支払いになっております。
  今後はgoogleのAPIを使い、撮影地をわかるような実装の追加していく予定です。
<br>
<br>

# herokuのURL

[original-app-28111](https://original-app-28111.herokuapp.com/)
<br>
<br>

# テスト用アカウント

```
ユーザー名 user1
email user@test.com
pass tt1111
```
```
ユーザー名 user2
email user@test2.com
pass tt2222
```
```
Basic認証

id daisuke
pass 6147
```

# 利用方法



# テーブル設計

## users テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| nickname        | string | null: false |
| password        | string | null: false |
| email           | string | null: false |
| first_name      | string | null: false |
| last_name       | string | null: false |
| first_name_kana | string | null: false |
| last_name_kana  | string | null: false |
| birth           | date   | null: false |

### Association

- has_many :items
- has_many :orders
- has_many :comments

## items テーブル

| Column                  | Type      | Options                       |
| ----------------------- | --------- |------------------------------ |
| name                    | string    | null: false                   |
| info                    | text      | null: false                   |
| category_id             | integer   | null: false                   |
| status_id               | integer   | null: false                   |
| delivery_fee_id         | integer   | null: false                   |
| prefectures_id          | integer   | null: false                   |
| shipping_days_id        | integer   | null: false                   |
| trader_name_id          | integer   | null: false                   |
| price                   | integer   | null: false                   |
| user                    |references | null: false, foreign_key: true|

### Association

- has_many :comments
- belongs_to :user
- has_one :order
- has_one_attached :image

## comment テーブル

| Column                  | Type      | Options                       |
| ----------------------- | --------- |------------------------------ |
| user                    | integer   |null: false, foreign_key: true |
| item                    | integer   |null: false, foreign_key: true |
| text                    |references | null: false                   |

### Association

- belongs_to :user
- belongs_to :item
- 

## addresses テーブル

| Column           | Type      | Options                        |
| ---------------- | --------- | ------------------------------ |
| post_code        | string    | null: false                    |
| prefectures_id   | integer   | null: false                    |
| city             | string    | null: false                    |
| block            | string    | null: false                    |
| building         | string    |                                |
| phone            | string    | null: false                    |
| order            | references| null: false, foreign_key: true |

### Association

- belongs_to :order



##  ordersテーブル

| Column        | Type       | Options                        |
| --------------| ---------- |--------------------------------|
| user          | references | null: false, foreign_key: true |
| item          | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :item
- has_one :address
