class Order < ApplicationRecord

  # settings do
  #   mappings dynamic: false do
  #     indexes :customer_id, type: :integer
  #     indexes :order_status, type: :integer
  #     indexes :order_date, type: :date
  #     indexes :required_date, type: :date
  #     indexes :shipped_date, type: :date
  #   end
  # end

  belongs_to :customer
  belongs_to :store
  belongs_to :staff
  has_many :order_items
end
