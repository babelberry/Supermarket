class Basket

	def initialize
		@items = []
	end

	def has_items?
		@items.count > 0
	end


	def accept(item)
		@items << item
	end

	def items
		@items
	end

	def total
		@items.inject(0) {|total, item| total + item.total }
	end

end