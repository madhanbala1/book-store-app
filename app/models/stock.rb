class Stock < ApplicationRecord
  self.primary_keys = :store_id, :product_id
  belongs_to :store
  belongs_to :product
end
