# Item corresponds to each type of item that can be bought in the supermarket

class LineItem
	attr_reader :item, :quantity

	def initialize(item, quantity=1)
		@item, @quantity = item, quantity
	end

	def total
		@item.price * @quantity
	end
end