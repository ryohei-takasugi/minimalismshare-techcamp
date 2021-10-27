# 1. アプリケーション名
ミニマリズムシェア（Minimalism share）

# 2． アプリケーション概要
ミニマリズムに興味のある人が、自身の取り組んでいる内容を投稿したり、他者の取り組んでいる内容を検索することができるアプリケーションです。
取り組んでいる内容の投稿以外にも、ミニマリズムに対する考え方を議論したり、関連書籍を紹介したりすることができます。

# 3． URL
(未デプロイのため、情報なし)

# 4. テスト用アカウント
(未デプロイのため、情報なし)

# 5. 利用方法
(現状説明なし)

# 6. 目指した課題解決

## 6.1. 背景と狙い
２０２０年頃からミニマリズムという考え方を取り入れ、生活をシンプルにしようとする人々が話題になりました。ミニマリズムを持った人のことをミニマリストと呼び、一部のミニマリストがメディアでも取り上げられています。

話題になり真似する人が増えたところまでは良かったのですが、問題も生まれました。ミニマリストで有名な人と同じ生活をしようとして、布団や服を減らした結果として病気になったり、お金を多く消費したのちミニマリズムをやめてしまう人が出てきました。
本来、ミニマリズムは注力したい対象があり、注力するために生活をシンプルにするという考え方のはずです。決して物を持ってはいけないわけではありません。極端に物を持たない人だけが有名になった結果、誤解が生まれていると思います。

そこで、もっと気軽にミニマリズムに関する情報を共有できるサイトの構築が必要だと思いました。現状、ミニマリストが発信しているメディアは、テレビ、本、ブログ、Twitterが主です。テレビ、本は主に極端に物を捨てた人が中心になっています。極端に物を捨てているわけではない人は、ブログ、Twitterです。これらは専用のページではないため多くの情報に埋もれています。ミニマリズムに関する情報を共有する専用サイトを構築することで、ミニマリズムの実現や情報の整理を助けるサイト構築を行います。

## 6.2. ペルソナ

| 項目 | 内容 |
| --- | --- |
| 年齢 | ２０代〜４０代 |
| 性別 | 関係なし |
| 職業 | 関係なし |
| 家族 | ・家族がいるが、全員がミニマリズムに共感している<br>・一人暮らし |
| 特徴 | ・ミニマリズムに共感する人<br>・ミニアルバムを実現する具体的な方法を探すことに苦労している<br>・ミニマリズムの考え方について議論したい人 |

## 6.3 ユーザーストーリー

### 6.3.1 ユーザーの課題
* どのようなミニマリズムが存在するのか情報が偏りがある
  * 有名な人は極端にものが少なく、自分に近い環境ではないことがある
  * 調べても例を挙げられるだけで、対象となっている物が限定的なことが多い
* 自分と同じレベルの人が探せない
* 現状共有ツールとしてはTwitterかブログが中心で、情報が埋もれている可能性がある
* ミニマリズムを誤解している人がいる
  * ものを捨てすぎて不便になりストレスが溜まった
  * 布団を有名な人と同じものに変えたら風邪をひいた
  * ものを捨てたが結局増えてきた
  * 食事制限に耐えられなかった
  * 趣味のものが持ちづらくなった
* 考え方について議論の余地がある

### 6.3.2 解決するための機能
 * ミニマリズムを実践した人の経験を投稿する機能
 * ミニマリズムを実践した人の経験を検索する機能
 * 自分と近い人が検索するため、対象とする物や、投稿者の家に住む人の人数、家の中にある物の数に対する傾向を調べることができる検索機能
 * 自分の傾向がわからない場合でも、ランキングから多くの人が共感したり、真似したいと思う人を調べることが可能にするランキング機能
 * Twitterでミニマリズムを報告している人が継続して報告できるようにするため、Twitter連携
 * 意見が分かれる話や、誤解を解消するための、思考の共有機能
 * 情報をいち早く知りたい人のためのウォッチ機能

# 7. 洗い出した要件

## 7.1 要件一覧
 * 共通部
 * サイトに関しての説明ページ
 * ログイン（手入力版／Twitter連携）ページ
 * サインイン（手入力版／Twitter連携）ページ
 * マイページ
 * 経験を投稿するページ
 * 経験の投稿を一覧表示／検索するページ
 * 経験の投稿を閲覧／削除（コメントを投稿／編集／削除を含む）するページ
 * 経験の投稿を編集するページ
 * 経験の投稿に関するランキングページ
 * 思考の共有を投稿するページ
 * 思考の共有を一覧表示／検索するページ
 * 思考の共有を閲覧／削除（コメントを投稿／編集／削除を含む）するページ
 * 思考の共有を編集するページ
 * 思考の共有に関するランキングページ

## 7.2 共通部 の要件
* 状態：ログイン状態に関わらない
   * ボタン
    * 経験の投稿：経験の投稿を一覧表示するページへ遷移できる
    * 思考の共有：思考の共有を一覧表示するページへ遷移できる
    * About　　：サイトに関しての説明ページへ遷移できる
  * 表示
    * 表示中のページが、「経験の投稿／思考の共有／about」のいずれかであるか判断できるように表示する
    * 全画面共通で表示する
* 状態：未ログインユーザーが画面を表示した
   * ボタン
    * ログイン：ログインページへ遷移できる
    * 新規作成：アカウント新規作成ページへ遷移できる
  * 表示
    * マイページへ遷移できない
* 状態：ログイン済ユーザーが画面を表示した
  * ボタン
    * マイページ：マイページに遷移できる
    * ログアウト：ログアウトできる
  * 表示
    * アカウントのニックネームを表示する
    * ログイン／アカウント新規作成ページへ遷移できない

## 7.4 ログイン（手入力版／Twitter連携）ページ の要件
* 状態：未ログインユーザーが画面を表示した
  * 入力エリア
    * メールアドレス：必須、＠マークを含む
    * パスワード　　：必須、６文字以上３２文字以下、半角英数字混合
  * ボタン
    * ログイン：入力エリアを入力してログインボタンを押す
    * ログイン：ログインボタンを押して、ログインに成功した場合は、「経験の投稿を一覧表示／検索するページ」へ遷移する
    * ログイン：入力内容に不備がある場合は、ページにとどまり、エラーメッセージを表示する
    * ログイン：ページにとどまった場合は、入力中のデータは消えない（パスワードを除く）
    * Twitter：Twitterアカウントでログインする
  * 表示
    * エラーメッセージは日本語で表示する
* 状態：ログイン済ユーザーが画面を表示した
  * 表示
    * ログイン済ユーザーは表示できない

## 7.5 サインイン（手入力版／Twitter連携）ページ の要件
* 状態：未ログインユーザーが画面を表示した
  * 入力エリア
    * 登録方法　　　：必須、手入力／Twitter
    * ニックネーム　：必須、１文字以上６文字以下
    * メールアドレス：必須、＠マークを含む
    * パスワード　　：必須、６文字以上３２文字以下、半角英数字混合
    * パスワード確認：必須、パスワードとパスワード（確認）は、値の一致
    * 注力したい思考：任意、テキストエリア
    * 住まいの地域　：任意、「北海道または東北、関東、中部、関西、中国または四国、九州または沖縄」
    * 住まいの気候　：任意、「比較的寒い地域、比較的温かい地域、寒暖差の少ない地域」
    * 同居人　　　　：任意、「１人／２人／家族」人暮らし
    * （うち未成年）：任意、「有／無」
    * 現在の状況　　：任意、「すでにかなり物が少ない／ある程度物を減らして片付いている／ちょっとだけ減らした／まだ何もしてない」
  * ボタン
    * 新規作成：入力エリアに入力して新規作成ボタンを押す
    * 新規作成：新規作成ボタンを押して、アカウントの作成に成功した場合は、ログイン済みとなり、「経験の投稿を一覧表示／検索するページ」へ遷移する
    * 新規作成：入力内容に不備がある場合は、ページにとどまり、エラーメッセージを表示する
    * 新規作成：ページにとどまった場合は、入力中のデータは消えない（パスワードを除く）
  * 表示
    * エラーメッセージは日本語で表示する
* 状態：ログイン済ユーザーが画面を表示した
  * ログイン済ユーザーは表示できない

## 7.6 マイページ の要件
* 状態：未ログインユーザーが画面を表示した
  * 未ログインユーザーは表示できない
* 状態：ログイン済ユーザーが画面を表示した
  * 表示
    * サインイン時に登録した内容が表示可能とする
    * 自身の投稿内容を一覧表示できる
    * ウォッチしている記事を一覧表示できる

## 7.7 経験を投稿するページ の要件
* 状態：未ログインユーザーが画面を表示した
  * 未ログインユーザーは表示できない
* 状態：ログイン済ユーザーが画面を表示した
  * 入力エリア
    * タイトル：必須、１文字以上
    * タグ　　：必須、１つ以上、インクリメント検索可能、主に対象物を登録するイメージ
    * 結果　　：必須、「成功／失敗」
    * 経過　　：必須、「０日以下、最近、１ヶ月程度、３ヶ月程度、半年程度、１年、１年以上」
    * 問題点　：必須、１文字以上
    * 解決　　：必須、１文字以上
    * 画像　　：任意
  * ボタン
    * 投稿：入力エリアに入力して投稿ボタンを押す
    * 投稿：投稿に成功した場合は、「経験の投稿を一覧表示／検索するページ」へ遷移する
    * 投稿：投稿し失敗した場合は、ページにとどまり、エラーメッセージを表示する
    * 投稿：ページにとどまった場合は、入力中のデータは消えない
  * 表示
    * エラーメッセージは日本語で表示する

## 7.8 経験の投稿を一覧表示／検索するページ の要件
* 状態：ログイン状態に関わらない
  * 入力
    * 検索文字：任意
  * ボタン
    * 投稿記事：投稿記事をクリックすることで詳細画面へ遷移する
    * 検索オプション：検索オプションを折りたたみメニューとして表示する
    * 検索：入力エリアの文字列および検索オプションの内容を基に、対象の記事を絞り込みソートする
  * 表示
    * 経験の投稿に関わる記事を一覧表示する
    * 一覧は最初の２０件までを表示する
    * それ以降はページ切り替えで２０件ごとに表示する
    * １つの記事には「画像、タイトル、ユーザー（登録時の内容を参照）、いいね数、真似した数、コメント数、更新日付」を表示する


## 7.10 経験の投稿を閲覧／削除（コメントを投稿／編集／削除を含む）するページ の要件
* 状態：ログイン状態に関わらない
  * 表示
    * 投稿した内容を閲覧することができる
    * コメント（本文、日時、ユーザー名）を閲覧することができる
* 状態：未ログインユーザーが画面を表示した
  * 表示
    * コメントの入力欄を表示しない
    * コメントの編集／削除ボタンを表示しない
    * 編集ボタンを表示しない
    * 削除ボタンを表示しない
* 状態：ログイン済ユーザー＆作者ではないユーザーが画面を表示した
  * 入力エリア
    * コメント：必須
  * ボタン
    * コメント投稿：入力エリアに入力された文字をコメントとして投稿する
    * コメント編集：自分のコメントを編集することができる
    * コメント削除：自分のコメントを削除することができる
    * いいね：クリックすることで閲覧者が評価できる
    * 真似した：クリックすることで閲覧者が評価できる
  * 表示
    * 編集ボタンを表示しない
    * 削除ボタンを表示しない
* 状態：ログイン済ユーザー＆作者が画面を表示した
  * 入力エリア
    * コメント：必須
  * ボタン
    * 編集：クリックすることで「経験の投稿を編集するページ」へ遷移できる
    * 削除：クリックすることで記事を削除できる
    * コメント投稿：入力エリアに入力された文字をコメントとして投稿する
    * コメント編集：自分のコメントを編集することができる
    * コメント削除：自分と他のユーザーのコメントを削除することができる
    * いいね：クリックすることで閲覧者が評価できる
    * 真似した：クリックすることで閲覧者が評価できる
  * 表示
    * ログイン済ユーザー＆作者であれば、編集ボタンと削除ボタンを表示する


## 7.9 経験の投稿を編集するページ の要件
* 状態：未ログインユーザー、または、ログイン済ユーザーだが作者以外のユーザーが画面を表示した
  * 画面を表示することはできない
* 状態：ログイン済ユーザー＆作者が画面を表示した
  * 最初の投稿の時と同じ内容が編集できる
  * 入力チェックの判定や表示も最初の投稿と同じ


## 7.11 経験の投稿に関するランキングページ の要件
* 状態：ログイン状態に関わらない
  * ボタン
    * 投稿記事：投稿記事をクリックすることで詳細画面へ遷移する
  * 表示
    * １つの記事に関する表示内容は「経験の投稿を一覧表示／検索するページ」と同じ
    * いいね数ランキングをTOP20件表示する
    * 真似した数ランキングをTOP20件表示する


## 7.12 思考の共有を投稿するページ の要件
* 状態：未ログインユーザーが画面を表示した
  * 未ログインユーザーは表示できない
* 状態：ログイン済ユーザーが画面を表示した
  * 入力エリア
    * タイトル：必須
    * 本文　　：必須
    * タグ　　：必須（経験の投稿と同じ）
  * ボタン
    * 投稿：入力エリアに入力して投稿ボタンを押す
    * 投稿：投稿に成功した場合は、「思考の共有を一覧表示／検索するページ」へ遷移する
    * 投稿：投稿し失敗した場合は、ページにとどまり、エラーメッセージを表示する
    * 投稿：ページにとどまった場合は、入力中のデータは消えない
  * 表示
    * エラーメッセージは日本語で表示する


## 7.13 思考の共有を一覧表示／検索するページ の要件
* 状態：ログイン状態に関わらない
  * 入力
    * 検索文字：任意
  * ボタン
    * 投稿記事：投稿記事をクリックすることで詳細画面へ遷移する
    * 検索オプション：検索オプションを折りたたみメニューとして表示する
    * 検索：入力エリアの文字列および検索オプションの内容を基に、対象の記事を絞り込みソートする
  * 表示
    * 経験の投稿に関わる記事を一覧表示する
    * 一覧は最初の２０件までを表示する
    * それ以降はページ切り替えで２０件ごとに表示する
    * １つの記事には「タイトル、タグ、更新日付」を表示する


## 7.15 思考の共有を閲覧／削除するページ の要件
* 状態：ログイン状態に関わらない
  * 表示
    * 投稿した内容を閲覧することができる
* 状態：未ログインユーザーが画面を表示した
  * 表示
    * 編集ボタンを表示しない
    * 削除ボタンを表示しない
* 状態：ログイン済ユーザーが画面を表示した
  * ボタン
    * 編集：クリックすることで「経験の投稿を編集するページ」へ遷移できる
    * 削除：クリックすることで記事を削除できる
    * いいね：クリックすることで閲覧者が評価できる
  * 表示
    * ログイン済ユーザーであれば、編集ボタンと削除ボタンを表示する
    * 編集履歴（ユーザー名、編集前、編集後、更新日時）を閲覧することができる

## 7.14 思考の共有を編集するページ の要件
* 状態：未ログインユーザーが画面を表示した
  * 画面を表示することはできない
* 状態：ログイン済ユーザーが画面を表示した
  * 前回の投稿の時と同じ内容が編集できる
  * 入力チェックの判定や表示も最初の投稿と同じ


## 7.16 思考の共有に関するランキングページ の要件
* 状態：ログイン状態に関わらない
  * ボタン
    * 投稿記事：投稿記事をクリックすることで詳細画面へ遷移する
  * 表示
    * １つの記事に関する表示内容は「思考の共有を一覧表示／検索するページ」と同じ
    * いいね数ランキングをTOP20件表示する

# 8. 実装した機能についての画像やGIFおよびその説明
(現状説明なし)

# 9. 実装予定の機能

* 思考の共有ページ
* Twitter連動
  * ログイン連動
  * 投稿連動
* サーバーサイド、フロントエンドの分離
* スマホアプリ（ネイティブ）の製作
* メール通知による更新通知機能の実装

# 10. データベース設計

## 10.1 ER図

![経験の投稿 ER図](./doc/table-experience.jpg "経験の投稿 ER図")

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| nickname           | string  | null: false               |
| dream              | string  | null: false               |
| region_id          | integer | null: false               |
| climate_id         | integer | null: false               |
| housemate_id       | integer | null: false               |
| children_id        | integer | null: false               |
| status_id          | integer | null: false               |

### Association

- has_many :experiences
- has_many :experience_likes
- has_many :experience_comments
- has_many :notices


## experiences テーブル

| Column   | Type       | Options                         |
| -------- | ---------- | ------------------------------- |
| privacy  | integer    | null: false                     |
| category | integer    | null: false                     |
| title    | string     | null: false                     |
| days     | integer    | null: false                     |
| problem  | text       | null: false                     |
| solved   | text       | null: false                     |
| user     | references | null: false, foreign_key: true  |

### Association

- belongs_to :user
- has_many :experience_likes
- has_many :experience_comments
- has_many :experience_tag_relations


## experience_comments テーブル

| Column     | Type       | Options                         |
| ---------- | ---------- | ------------------------------- |
| comment    | text       | null: false                     |
| user       | references | null: false, foreign_key: true  |
| experience | references | null: false, foreign_key: true  |

### Association

- belongs_to :user
- belongs_to :experience


## experience_likes テーブル
| Column     | Type       | Options                         |
| ---------- | ---------- | ------------------------------- |
| like       | boolean    | null: false                     |
| imitation  | boolean    | null: false                     |
| user       | references | null: false, foreign_key: true  |
| experience | references | null: false, foreign_key: true  |


### Association

- belongs_to :user
- belongs_to :experience



## experience_tag_relations テーブル
| Column     | Type       | Options                         |
| ---------- | ---------- | ------------------------------- |
| tag        | references | null: false, foreign_key: true  |
| experience | references | null: false, foreign_key: true  |

### Association

- belongs_to :tag
- belongs_to :experience


## notices テーブル
| Column     | Type       | Options                         |
| ---------- | ---------- | ------------------------------- |
| content    | string     | null: false                     |
| url        | string     |                                 |
| read       | boolean    | null: false                     |
| user       | references | null: false, foreign_key: true  |

### Association

- belongs_to :user


## tags テーブル
| Column | Type    | Options     |
| ------ | ------- | ----------- |
| name   | string  | null: false |


### Association

- has_many :experience_tag_relations



# 11. ローカルでの動作方法
(現状説明なし)

