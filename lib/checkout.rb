class Checkout 



	def initialize(basket)
		@basket = basket
	end

	def total_price
		@basket.total
	end

	def total
		@basket.items.inject(0) do |total, line_item|
				total + apply_promotion_on(line_item)
		end
	end

	def promotion_for(line_item)
	  line_item.item.promotion
	end

	def apply_promotion_on(line_item)
		promotion_for(line_item).total(line_item)
	end

end