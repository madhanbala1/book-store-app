class OrdersController < ApplicationController
	def index
		@orders = Order.all.order("id ASC").paginate(:page => params[:page], :per_page => 10)
		@order_status = {1 => "Ordered", 2 => "Processed", 3 => "Shipped", 4 => "Delivered"}
	end

	def search
		query = params[:search_customers].presence && params[:search_customers][:query]
		if query
			@customers = Customer.search(query).paginate(:page => params[:page], :per_page => 10)
		else
			@customers = Customer.all.order("id ASC").paginate(:page => params[:page], :per_page => 10)
		end
	end

end