class Store < ApplicationRecord
	has_many :stocks
	has_many :staffs
	has_many :orders
end
