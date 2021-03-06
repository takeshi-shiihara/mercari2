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

  # 正規表現で空文字あるいは空白文字だけで構成された文字列を許可しないようにする。
  validates :name, format: { without: /\A[[:space:]]*\z/,allow_nil: true }
  validates :description, format: { without: /\A[[:space:]]*\z/,allow_nil: true }
  validates :condition, format: { without: /\A[[:space:]]*\z/,allow_nil: true }
  # 以下でも同じ
  # validates :name, presence: true
  # validates :description, presence: true
  # validates :condition, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions

end
