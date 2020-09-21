# アプリケーション名 / original-app-28111
<br>
<br>

# アプリケーション概要

- コーディネイトと売買を併せ持ったアプリケーションになります。
  コンセプトは中年層の方でも手軽に楽しんでいただけるようデザインになっており、
  コーディネイトを可視化することでイメージが沸くようになっています。<br>
  決済はクレジットカードでのお支払いになっております。<br>
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

### 新規登録について<br>
(画像)<br>
1.<br>
上部ヘッダーの右端にあるボタンから新規登録をお願い致します。<br>
※ 下記(テストログイン)にemailとpasswordを用意していますので、そちらからログインして頂く事も可能です。<br>

2.<br>
(画像)<br>
新規登録画面に遷移が確認できましたら記載事項の入力をお願い致します。<br>
※ 必須項目は必記入をお願いします。<br>

3.<br>
(画像)<br>
新規登録行いますとトップページに遷移します。<br>

#ログアウトについて<br>
(画像)<br>
トップページに遷移して頂くとヘッダーにご自身が登録して頂いたニックネームとログアウトの２つのボタンに画面が切り替わっていることを確認してください。<br>
ログアウトをクリックして頂くとトップページに遷移し、ヘッダーの画面も新規登録とログインに切り替わっていることを確認できればログアウト完了となります。<br>

#ログインについて<br>
(画像)<br>
1.<br>
一度新規登録された方はヘッダーの右端ボタンのログインをクリックして頂くとログインページに遷移します。<br>

2.
(画像)
ログインページに遷移を確認出来ましたら、登録の際に記入して頂いたemailとpasswordを記入の上ログインボタンをクリックしてください。<br>
トップページに遷移しヘッダーにニックネームとログアウトの２つのボタンに画面が切り替わっていることを確認してください。<br>
※尚、email欄をクリックしますと過去の登録情報が現れますが、近日中に変更致します。

#投稿について<br>
1.<br>
(画像)<br>
ヘッダーの下に[投稿]と[一覧]のボタンが２つ用意されています。<br>

2.<br>
投稿ボタンをクリックして頂くと投稿ページに遷移します。<br>
(画像)<br>
入力必須項目を確認の上投稿をお願い致します。<br>
登録が完了致しますと自動でトップページに遷移します。<br>
※1<br>
尚トップページの下段にNewProductと書かれている画面には全投稿の新規5件が表示される仕様になっています。<br>
※2<br>
登録されていないユーザーが投稿画面に遷移しない仕様になっておりログインページに遷移します。<br>
必ず新規登録またはログインを行ってから投稿して頂く用お願い致します。<br>

#編集/削除については２つ方法が御座います。<br>
1.<br>
トップページ下部のNewProductの右端にある編集/削除のボタンからお願い致します。<br>

2.<br>
トップページから一覧ページに遷移して頂き、各投稿の編集/削除ボタンからお願い致します。<br>
※尚、マイペースが用意されていませんので今後追加していく予定で御座います。<br>

※編集ページ<br>
(画像)<br>
新規投稿と同じ仕様になっておりますので各フォームを編集して頂き、編集をするをクリックして下さい。<br>
トップページに遷移されます。<br>


#一覧について<br>
1.<br>
(画像)<br>
ヘッダーの下に[投稿]と[一覧]のボタンが２つ用意されています。<br>
一覧ボタンをクリックして頂くと一覧ページに遷移します。<br>
(画像)<br>
こちらからは全ユーザーの投稿情報を確認しようになっております。<br>

#購入について<br>
1.<br>
(画像)<br>
トップページ下段のNewProductまたは一覧ページからの購入が可能になっております。<br>
購入ボタンをクリックして頂くと購入画面に遷移します。<br>

2.<br>
(画像)<br>
必要事項をご確認の上記述して頂くようお願い致します。<br>
尚、決済については全てカードでのお支払いなっており今後各コンビニ等でお支払い頂ける仕様に変更する予定です。<br>
購入が完了致しますとトップページに遷移し、ヘッダー上部に購入されましたとメッセージが表示されます。<br>

#トップページ中段のイラストについて<br>

画像の上にカーソルを置いて頂くと、例のテンプレートが表示される仕様になっております。<br>
※ 尚、現在の例のテンプレートなっておりますが<br>
投稿により情報が変動する仕様に変更予定です



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
