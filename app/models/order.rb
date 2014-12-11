class Order < ActiveRecord::Base
<<<<<<< HEAD
=======
	has_many :line_items, dependent: :destroy
>>>>>>> check-out
	PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]
	validates :name, :address, :email, presence: true
	validates :pay_type, inclusion: PAYMENT_TYPES

<<<<<<< HEAD
	def add_line_item_from_cart(cart)
=======
	def add_line_items_from_cart(cart)
>>>>>>> check-out
		cart.line_items.each do |item|
			item.cart_id = nil
			line_items << item
		end
	end
end
