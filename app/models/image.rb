class Image < ApplicationRecord
  belongs_to :item
  mount_uploader :main_image, ImageUploader
end
