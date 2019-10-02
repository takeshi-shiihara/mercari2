class Item < ApplicationRecord
  belongs_to :user
  belongs_to :size
  belongs_to :category
  has_many :images
  has_one :brand
  accepts_nested_attributes_for :brand
  has_one :delibery
  accepts_nested_attributes_for :delibery
  #has_many:comments
  #has_one:buy
  #has_one:prefecture

  extend ActiveHash::Associations::ActiveRecordExtensions

end
