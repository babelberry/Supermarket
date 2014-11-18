# This encompasses all the items selected by the client, that will be passed on to the Checkout
class Basket

	def initialize
		@basket = []
	end

	def has_items?
		@basket.count > 0
	end


	def accept(item)
		@basket << item
	end

end