class OrderItem < ApplicationRecord
  self.primary_keys = :order_id, :item_id
  belongs_to :order
  belongs_to :product
end
