class StoreController < ApplicationController
  skip_before_action :authorize

	include CurrentCart
	before_action :set_cart

	def increment_counter
		if session[:counter].nil?
			session[:counter] = 0
		end
		session[:counter] += 1
	end

  def index
  	increment_counter
  	@products = Product.order(:title)
  end
end
