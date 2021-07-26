# README


# アプリケーション名
Sneaker-Hz（スニーカーヘッズ）


# アプリケーションの概要
スニーカー情報の共有アプリを作成しました。<br>
このアプリでは、スニーカーに関する投稿とスニーカーの売買ができる機能を実装しました。<br>


# URL
[Sneaker-Hz URL](https://sneaker-hz.herokuapp.com/)


# テスト用アカウント
テスト用email   :test1@com
テスト用password:test11


# 利用方法
ユーザーを新規登録してサービスを利用することができるようになります。<br>
ログインしているユーザーは、スニーカーの紹介をすることができる投稿機能や投稿へのコメント機能、スニーカー出品情報を閲覧し、購入できる機能を利用してもらえます。<br>
ログインしていないユーザーも投稿を一覧できる機能は利用できます。一部サービスを利用していただき、ユーザーになりたいと思ってもらえた際は、新規登録して利用していただくシステムとなっています。


# 目指した課題解決
現在スニーカー情報の共有ツールは数多くありますが、どれもアプリ自体の不特定多数と繋がることができ、情報共有できることを目的にしていると思います。<br>
そこで、自分の周りにもスニーカー好きの友達が多くいることをヒントに、自分の周りのスニーカーを好きな人を対象とし、小規模なコミュニティを作ることができれば身近で好きなものを通じて交流が広がる環境を構築することができ、新しいコミュニティを作ることができるのではないかと考え、このアプリを作成しました。<br>


# 洗い出した要件
新規登録・ログイン・ログアウト機能、ユーザー詳細機能、写真付投稿機能、投稿編集機能、投稿削除機能、コメント投稿機能、投稿検索機能、スニーカー出品機能、スニーカー購入機能


# 実装した機能についての画像やGIFおよびその説明について
ユーザー管理機能<br>


# 使用技術（開発環境）
### フロントエンド
HTML/CSS
### バックエンド
ruby 2.6.5<br>
Ruby On Rails 6.0.0<br>
### インフラ
MySQL 5.6.51<br>
Sequel Pro<br>

### その他使用ツール
Visual Studio Code<br>
draw.io


# 実装予定の機能
投稿検索機能、スニーカー出品機能、スニーカー購入機能、いいね機能

# データベース設計

## users テーブル (ユーザー情報)

| Column                  | Type       | Options                    |
| ----------------------- | ---------- | -------------------------- |
| username                | string     | null: false                |
| email                   | string     | null: false, unique: true  |
| encrypted_password      | string     | null: false                |

### Association

 has_many :sneakers
 has_many :comments
 has_many :exhibitions
 
## sneakers テーブル (スニーカー情報)

| Column                 | Type        | Options                         |
| ---------------------- | ----------- | ------------------------------- |
| username               | references  | null: false, foreign_key: true  |
| title                  | string      | null: false                     |
| detail                 | text        | null: false                     |

### Association

belongs_to :user
has_many :comments

## comments テーブル (コメント情報)

| Column                 | Type        | Options                         |
| ---------------------- | ----------- | ------------------------------- |
| user                   | references  | null: false, foreign_key: true  |
| sneaker                | references  | null: false, foreign_key: true  |
| content                | string      | null: false                     |

### Association

belongs_to :user
belongs_to :sneaker

## exhibitions テーブル(出品情報)

| Column                 | Type        | Options                         |
| ---------------------- | ----------- | ------------------------------- |
| user                   | references  | null: false, foreign_key: true  |
| name                   | string      | null: false                     |
| size                   | string      | null: false                     |
| introduction           | string      | null: false                     |
| condition_id           | integer     | null: false                     |
| price                  | string      | null: false                     |
| postage_id             | integer     | null: false                     |
| delivery_area_id       | integer     | null: false                     |

### Association

belongs_to :user
belongs_to :buyer

## buyers テーブル (購入者記録)

| Column                 | Type        | Options                         |
| ---------------------- | ----------- | ------------------------------- |
| user                   | references  | null: false, foreign_key: true  |
| sneaker                | references  | null: false, foreign_key: true  |

### Association

belongs_to :user
belongs_to :sneaker
has_one :shopping_infos

## shopping_infos テーブル（配送先情報）

| Column                 | Type        | Options                         |
| ---------------------- | ----------- | ------------------------------- |
| buyer                  | references  | null: false, foreign_key: true  |
| postal_code            | string      | null: false                     |
| prefecture_id          | integer     | null: false                     |
| municipality           | string      | null: false                     |
| address                | string      | null: false                     |
| phone_number           | string      | null: false, unique: true       |

### Association

 belongs_to :buyer
