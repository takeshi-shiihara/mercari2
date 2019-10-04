class Address < ApplicationRecord
  validates :post_number, presence: true, numericality: true
  validates :city, presence: true
  belongs_to :user
end
