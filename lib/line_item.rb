class LineItem
	attr_reader :item, :quantity

	def initialize(item, quantity=1)
		@item, @quantity = item, quantity
	end

	def total
		@item.price * @quantity
	end
end