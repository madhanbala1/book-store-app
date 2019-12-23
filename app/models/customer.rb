class Customer < ApplicationRecord
  	include Elasticsearch::Model
  	include Elasticsearch::Model::Callbacks
	
	has_many :orders
end
