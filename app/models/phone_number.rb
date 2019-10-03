class PhoneNumber < ApplicationRecord
  validates :phone_number, presence: true, numericality: true, length: { minimum: 8 }
  belongs_to :user
end
