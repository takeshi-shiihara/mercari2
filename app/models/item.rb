class Item < ApplicationRecord
  belongs_to :user
  belongs_to :size
  belongs_to :category
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
  has_one :brand, dependent: :destroy
  accepts_nested_attributes_for :brand
  has_one :delibery, dependent: :destroy
  accepts_nested_attributes_for :delibery

  validates :name, format: { without: /\A[[:space:]]*\z/,allow_nil: true }
  validates :description, format: { without: /\A[[:space:]]*\z/,allow_nil: true }
  validates :condition, format: { without: /\A[[:space:]]*\z/,allow_nil: true }
  
  #has_many:comments
  #has_one:buy
  #has_one:prefecture
  # mount_uploader :image, ImageUploader

  extend ActiveHash::Associations::ActiveRecordExtensions

end
