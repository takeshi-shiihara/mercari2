class Item < ApplicationRecord
  belongs_to:user
  belongs_to:size
  belongs_to:brand
  belongs_to:category
  #has_many:images
  #has_many:comments
  #has_one:delibery
  #has_one:status
  #has_one:buy
  #has_one:prefecture
end
