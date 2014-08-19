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