# README


##usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, unique:true|
|e-mail|string|null: false|
|password|string|nul: false|
|telephone|string|null: false, unique:true|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|post_number|string|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|address|string|null: false|
|building|string||
|birth_year|integer|null: false|
|birth_month|integer|null: false|
|birth_day|integer|null: false|
|profile|text||
|payment_id|reference|foreign_key: true|

#Association
has_many:items
has_many:comments
has_one:payment
has_many:buys



##itemsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|referencs|null:false,foreign_key:ture|
|name|string|null:false|
|price|integer|null:false|
|description|text|null:false|
|condition|string|null:false|
|delibery_price|intger||null:false|
|prefecuture|string|null:false|
|delibery_date|string|null:false|
|delibery_burden|string|null:false|
|image_id|referencs|null:false,foreign_key:ture|
|category_id|referencs|null:false,foreign_key:ture|
|size_id|referencs|foreign_key:ture|
|brand_id|referencs|foreign_key:ture|
|comment_id|referencs|foreign_key:ture|
|buy_id|referencs|foreign_key:ture|
|result|integer||


#Association
belongs_to:buy
belongs_to:user
belongs_to:size
belongs_to:brand
belongs_to:category
has_many:images
has_many:comments



##sizesテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|referencs|null:false,foreign_key:ture|
|shoes_size|string||
|clothes|string||
|child_shoes_size|string||
|child_clothes|string||

#Association
has_many:items




##brandsテーブル
|Column|Type|Options|
|------|----|-------|
|itam_id|referencs|null:false,foreign_key:ture|
|name|string||

#Association
has_many:items



##categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|referencs|null:false,foreign_key:ture|
|name|string||
|ancestry|string|index:true|

#Association
has_many:items
has_ancestry



##imagesテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|referencs|null:false,foreign_key:ture|
|main_image|string|null:false|
|sub_image|string||

#Association
belongs_to:item



##commentsテーブル
 |Column|Type|Options|
 |------|----|-------|
 |item_id|integer|null: false, foreign_key:true|
 |user_id|integer|null: false, foreign_key: true|
 |text|text||

#Association

belongs_to :user 
belongs_to :item

##paymentsテーブル

|Column|Type|Options|
|------|----|-------|
|card_number|integer||
|valid_year|integer||
|valid_month|integer||
|cvc|integer||
|user_id|reference|null:false,foreign_key:ture|

#Association
belongs_to:user

##buysテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|referencs|null:false,foreign_key:ture|
|item_id|referencs|null:false,foreign_key:ture|


#Association
belongs_to:item
belongs_to:user




This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
