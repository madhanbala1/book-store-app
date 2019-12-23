class Product < ApplicationRecord

  belongs_to :brand
  belongs_to :category
  has_many :stocks
  has_many :order_items
end
