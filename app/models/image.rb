class Image < ApplicationRecord
  belongs_to :item
  mount_uploader :main_image, ImageUploader
  mount_uploader :sub_image, ImageUploader
end
