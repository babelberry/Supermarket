class Item
	attr_reader :price

	def initialize(price)
		@price = price
	end

	def reference
		puts rand(10)
		return rand(10)
	end

end