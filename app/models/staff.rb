class Staff < ApplicationRecord
  has_many :subs, :class_name => "Staff", :foreign_key => "manager_id"
  belongs_to :manager, class_name: "Staff"
  belongs_to :store
  has_many :orders
end
