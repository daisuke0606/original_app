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
email sample@sample100.com
pass tt1111
```
```
ユーザー名 user2
email sample@sample200.com
pass tt2222
```
```
Basic認証

id daisuke
pass 6147
```

# 利用方法

### 新規登録について<br>
![](https://gyazo.com/64fc9812187aa68c59267fd3ba7b86de.png)<br>

1.上部ヘッダーの右端にあるボタンから新規登録をお願い致します。<br>
※ 上記(テストログイン)にemailとpasswordを用意していますので、そちらからログインして頂く事も可能です。<br>

![](https://gyazo.com/e314bf2f3d90256ebc5c77e2196590e3.png)<br>
2.新規登録画面に遷移が確認できましたら記載事項の入力をお願い致します。<br>
※ 必須項目は必記入をお願いします。<br>

![](https://gyazo.com/9e3fca243e3872bf099c5fb19ce0137b.png)<br>
3.新規登録行いますとトップページに遷移します。<br>

### ログアウトについて<br>
![](https://gyazo.com/2bb64a93b1c75ffff2db38d894024e32.png)<br>
トップページに遷移して頂くとヘッダーにご自身が登録して頂いたニックネームとログアウトの２つのボタンに画面が切り替わっていることを確認してください。<br>
ログアウトをクリックして頂くとトップページに遷移し、ヘッダーの画面も新規登録とログインに切り替わっていることを確認できればログアウト完了となります。<br>

### ログインについて<br>
![](https://gyazo.com/fc4c845c195a05532e730f753922e7e9.png)<br>
1.一度新規登録された方はヘッダーの右端ボタンのログインをクリックして頂くとログインページに遷移します。<br>

![](https://gyazo.com/d9181770d42509e0e1d22929c60f2a30.png)<br>
2.ログインページに遷移を確認出来ましたら、登録の際に記入して頂いたemailとpasswordを記入の上ログインボタンをクリックしてください。<br>
トップページに遷移しヘッダーにニックネームとログアウトの２つのボタンに画面が切り替わっていることを確認してください。<br>
※尚、email欄をクリックしますと過去の登録情報が現れますが、近日中に変更致します。

### 投稿について<br>
![](https://gyazo.com/0abb9a394ce977af34530ca1713649e6.png)<br>
1.ヘッダーの下に[投稿]と[一覧]のボタンが２つ用意されています。<br>

![](https://gyazo.com/cb5d09114d703a3254d179676c622600.png)<br>
2.投稿ボタンをクリックして頂くと投稿ページに遷移します。<br>
入力必須項目を確認の上投稿をお願い致します。<br>
登録が完了致しますと自動でトップページに遷移します。<br>
※1<br>
尚トップページの下段にNewProductと書かれている画面には全投稿の新規5件が表示される仕様になっています。<br>
※2<br>
登録されていないユーザーが投稿画面に遷移しない仕様になっておりログインページに遷移します。<br>
必ず新規登録またはログインを行ってから投稿して頂く用お願い致します。<br>

### 編集/削除については２つ方法が御座います。<br>
![](https://gyazo.com/d3965df1ad177ac1722930f31b509863.png)<br>
1.トップページ下部のNewProductの右端にある編集/削除のボタンからお願い致します。<br>

2.トップページから一覧ページに遷移して頂き、各投稿の編集/削除ボタンからお願い致します。<br>
※1<br>
尚、マイページが用意されていませんので今後追加していく予定で御座います。<br>

※2<br>
編集ページ<br>
![](https://gyazo.com/cb5d09114d703a3254d179676c622600.png)<br>
新規投稿と同じ仕様になっておりますので各フォームを編集して頂き、編集をするをクリックして下さい。<br>
トップページに遷移されます。<br>


### 一覧について<br>
![](https://gyazo.com/0abb9a394ce977af34530ca1713649e6.png)<br>
ヘッダーの下に[投稿]と[一覧]のボタンが２つ用意されています。<br>
一覧ボタンをクリックして頂くと一覧ページに遷移します。<br>
こちらからは全ユーザーの投稿情報を確認しようになっております。<br>

### 購入について<br>
![](https://gyazo.com/6d2d84fd16cdbbfc1314bdf32f477fbb.png)<br>
1.トップページ下段のNewProductまたは一覧ページからの購入が可能になっております。<br>
購入ボタンをクリックして頂くと購入画面に遷移します。<br>

![](https://gyazo.com/f2fd47afe82a4877eee43afcf2443fa3.png)<br>
2.必要事項をご確認の上記述して頂くようお願い致します。<br>
尚、決済については全てカードでのお支払いなっており今後各コンビニ等でお支払い頂ける仕様に変更する予定です。<br>
購入が完了致しますとトップページに遷移し、ヘッダー上部に購入されましたとメッセージが表示されます。<br>

### トップページ中段のイラストについて<br>
![](https://gyazo.com/617e4e3e66fefd8bd0a8f29290421703.png)<br>
画像の上にカーソルを置いて頂くと、例のテンプレートが表示される仕様になっております。<br>
※1<br>
尚、現在の例のテンプレートなっておりますが投稿により情報が変動する仕様に変更予定です<br>

# 目指した課題解決

- 中年層の方でも手軽に楽しめるようにデザインはシンプルにしております。<br>
- ファッションを可視化する事でコーディネイトのイメージ出来きるようにしております。<br>
- jsを使用し決済の金額を一目で確認出来る様にしています。<br>


# 実装した機能についてのGIFと説明

1.jsを使用した金額の計算<br>
[![Image from Gyazo](https://i.gyazo.com/f528226d7ae0889d7a1b2ebb81741a24.gif)](https://gyazo.com/f528226d7ae0889d7a1b2ebb81741a24)<br>

2.jqueryを使用し、画像にカーソルを合わせるとテキストが表示されます。<br>
[![Image from Gyazo](https://i.gyazo.com/87b52f6cba037a65a7c1cb105d0a155a.gif)](https://gyazo.com/87b52f6cba037a65a7c1cb105d0a155a)<br>

3.詳細ページからコメント機能の追加<br>
[![Image from Gyazo](https://i.gyazo.com/7c06d69a3c2eb4cdcfdfa7c4aa97d9e2.gif)](https://gyazo.com/7c06d69a3c2eb4cdcfdfa7c4aa97d9e2)<br>

# 実装予定の機能

- マイページの実装
- コメント機能の非同期通信の実装
- いいね機能を非同期通信で実装
- googleAPIを取得し、撮影地の情報を追加(実装済み)

# データベース設計

[ER図](https://gyazo.com/9e1eb178aba1e049cf860c0ed80d0790)

# ローカルでの動作方法

```
% git clone https://github.com/daisuke0606/original-app.git
% cd original-app
% bundle install
% yarn install
% rails db:create
% rails db:migrate
```
### 言語・デプロイ・開発環境
- Ruby On Rails 6.0.0
- Ruby 2.6.5
- JQuery
- mysql2
- Github
- AWS
- Visual Studio Code
- heroku



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
| address_map             | string    | null: false                   |
| latitude                | float     | null: false                   |
| longitude               | float     | null: false                   |
| user                    |references | null: false, foreign_key: true|

### Association

- has_many :comments
- belongs_to :user
- has_one :order
- has_one_attached :image

## comment テーブル

| Column                  | Type      | Options                       |
| ----------------------- | --------- |------------------------------ |
| user                    |references |null: false, foreign_key: true |
| item                    |references |null: false, foreign_key: true |
| text                    | integer   | null: false                   |

### Association

- belongs_to :user
- belongs_to :item

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
