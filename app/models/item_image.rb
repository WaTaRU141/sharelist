class ItemImage < ApplicationRecord
  belongs_to :item
  has_many :thumbnails
  accepts_nested_attributes_for :thumbnails
end
