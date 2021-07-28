# README


# アプリケーション名
- Sneaker-Hz（スニーカーヘッズ）
<br>
<br>

# アプリケーションの概要
- スニーカー情報の共有アプリを作成しました。<br>
- このアプリでは、主にスニーカーに関する投稿・閲覧・コメントとスニーカーの売買ができる仕様となっています。<br>
<br>

# URL
- [Sneaker-Hz URL](https://sneaker-hz.herokuapp.com/)
<br>
<br>

# Basic認証
- ID  ：daichi33
- PASS：utmydit33
<br>
<br>

# テスト用アカウント
- メールアドレス : test1@com
- パスワード    : test11
<br>
<br>

# ペルソナ
- 対象年齢：２０代〜５０代男性、２０代女性（スニーカーブームにより、若い一部の女性にもスニーカー人気があるため）
- 対象者：利用者周辺のスニーカーが好きな人、ファッションが好きな人
<br>
<br>

# 利用方法
- ユーザーを新規登録してサービスを利用することができるようになります。<br>
- ログインしているユーザーは、スニーカーの紹介をすることができる投稿機能や投稿へのコメント機能、スニーカー出品情報を閲覧し、購入できる機能を利用することができます。<br>
- ログインしていないユーザーも投稿を一覧できる機能は利用できます。一部サービスを利用していただき、ユーザーになりたいと思ってもらえた際は、新規登録して利用していただくシステムとなっています。
<br>
<br>

# 目指した課題解決
- 現在スニーカー情報の共有ツールは数多くありますが、どのアプリも不特定多数と繋がることで情報共有できることを目的にしていると思います。<br>
- そこで、スニーカー好きの友達が多くいることをヒントに、身近でスニーカーを好きな人（特定多数）を対象とし、小規模なコミュニティを作ることができれば、好きなものを通じて交流が広がる環境を構築することができ、新しいコミュニティを作ることができるのではないかと考え、このアプリを作成しました。<br>
<br>

# 洗い出した要件
- ユーザー管理機能<br>
- ユーザー詳細機能<br>
- 写真付投稿機能<br>
- 投稿編集機能<br>
- 投稿削除機能<br>
- コメント投稿機能<br>
- 投稿検索機能<br>
- スニーカー出品機能<br>
- スニーカー購入機能<br>
- いいね機能
<br>
<br>

# 実装した機能についての画像やGIFおよびその説明について
## ユーザー管理機能
![Image from Gyazo](https://user-images.githubusercontent.com/85209776/127265841-2d6cfad7-7256-409e-aa71-257dacfc2930.gif)<br>
- 新規登録画面にて、「ユーザー名」、「メールアドレス」、「パスワード」、「パスワード（確認用）」を入力し、「Sign Up」を押すと、新規登録されてトップページに遷移します。<br>
- すでに登録されているユーザーはトップページのログインページから、「メールアドレス」、「パスワード」を入力し、「Log in」を押すとログインとなります。<br>
- トップページの「ログアウト」を押すと、ログアウトされます。

## 写真付投稿機能
![Image from Gyazo](https://user-images.githubusercontent.com/85209776/127266293-1e6af7e5-200d-44b4-9492-116f49800b5c.gif)<br>
- ファイルから投稿したい写真を選択します。<br>
- 投稿するスニーカ名、スニーカーの説明文を記入し、「投稿」ボタンを押すとトップページに遷移します。<br>

## 投稿一覧機能
![Image from Gyazo](https://user-images.githubusercontent.com/85209776/127266593-01e534b3-538e-4087-bfee-526d3f3fc589.gif)
<br>
- トップページから「投稿一覧」のボタンを選択します。<br>
- すると、投稿一覧が表示されます。投稿順は最新順となっており、写真の下にスニーカー名が書いてある状態となっています。<br>

## 投稿詳細機能
![Image from Gyazo](https://user-images.githubusercontent.com/85209776/127266805-f1d61475-5c15-4509-819a-e96a62ae78e4.gif)
<br>
- 投稿一覧ページの投稿写真をクリックすると、投稿詳細ページへ遷移します。<br>
- 投稿詳細ページでは、投稿者は投稿編集、投稿削除をすることができます。投稿者以外のユーザーは投稿にコメントをすることができます。<br>

## 投稿編集機能
[![Image from Gyazo](https://i.gyazo.com/841915785a4816672ca31266c7092594.gif)](https://gyazo.com/841915785a4816672ca31266c7092594)<br>
- 投稿者のみ、投稿編集をすることができます。<br>
- 編集ボタンを押すと投稿詳細ページに遷移し、編集完了となります。<br>

## 投稿削除機能
![Image from Gyazo](https://user-images.githubusercontent.com/85209776/127266998-3717907d-355a-4df7-831f-6b22cbf1c665.gif)
<br>
- 投稿者のみ、投稿削除をすることができます。<br>
- 削除ボタンを押すと、トップページに遷移し、投稿一覧から投稿が削除された状態になります。<br>

## コメント投稿機能
![Image from Gyazo](https://user-images.githubusercontent.com/85209776/127267191-9630d5d4-6591-4094-8ae5-30c354014fc8.gif)
<br>
- 投稿詳細ページを下にスクロールすると、コメント欄があり、投稿者以外のユーザーがコメントできるようになっています。<br>
- コメント完了後コメント欄の下の「コメント一覧」に、「コメントしたユーザー名」・「コメント内容」が表示されます。<br>

# 使用技術（開発環境）
### 【フロントエンド】
- HTML/CSS
### 【バックエンド】
- ruby 2.6.5<br>
- Ruby On Rails 6.0.0<br>
### 【インフラ】
- MySQL 5.6.51<br>
- Sequel Pro<br>
### 【その他使用ツール】
- Visual Studio Code<br>
- draw.io<br>
<br>

# 実装予定の機能
- 投稿検索機能
  - 気になるスニーカーの投稿がないかを検索できるようにします。 
- スニーカー出品機能
  - 自分のスニーカーを出品し、欲しい人に販売することができるようにします。
  - 「スニーカーの売り情報」を投稿することで、事前に売り希望者と買い希望者との情報共有・価格交渉等ができます。   
- スニーカー購入機能
  - 条件を見て、購入したいスニーカーを購入することができます。
- いいね機能
  - 良いと思った投稿に対して、「いいね」という気持ちを伝えることができます。
  - 「いいね」によって、投稿者も嬉しい気持ちになり、コミュニティの活性化に繋がると考えます。 
  <br>
  <br>

# ER図
[![Image from Gyazo](https://i.gyazo.com/0b0ad9f0793612f242c87736f5b810c0.png)](https://gyazo.com/0b0ad9f0793612f242c87736f5b810c0)
<br>
<br>

# データベース設計

## users テーブル (ユーザー情報)

| Column                  | Type       | Options                    |
| ----------------------- | ---------- | -------------------------- |
| username                | string     | null: false                |
| email                   | string     | null: false, unique: true  |
| encrypted_password      | string     | null: false                |

### Association

 - has_many :sneakers
 - has_many :comments
 - has_many :exhibitions
 
## sneakers テーブル (スニーカー情報)

| Column                 | Type        | Options                         |
| ---------------------- | ----------- | ------------------------------- |
| username               | references  | null: false, foreign_key: true  |
| title                  | string      | null: false                     |
| detail                 | text        | null: false                     |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル (コメント情報)

| Column                 | Type        | Options                         |
| ---------------------- | ----------- | ------------------------------- |
| user                   | references  | null: false, foreign_key: true  |
| sneaker                | references  | null: false, foreign_key: true  |
| content                | string      | null: false                     |

### Association

- belongs_to :user
- belongs_to :sneaker

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

- belongs_to :user
- belongs_to :buyer

## buyers テーブル (購入者記録)

| Column                 | Type        | Options                         |
| ---------------------- | ----------- | ------------------------------- |
| user                   | references  | null: false, foreign_key: true  |
| sneaker                | references  | null: false, foreign_key: true  |

### Association

- belongs_to :user
- belongs_to :sneaker
- has_one :shopping_infos

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

 - belongs_to :buyer
