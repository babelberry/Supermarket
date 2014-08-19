require 'line_item'
require 'item'

describe LineItem  do
	it 'contains an item' do
		line_item = LineItem.new(:item)
		expect(line_item.item).to eq :item
	end

	it 'has a quantity' do
		line_item = LineItem.new(:item, 2)
		expect(line_item.quantity).to eq 2
	end

	it 'calculates the total price' do
		item = Item.new(10, 2)
		line_item = LineItem.new(item, 2)

		expect(line_item.total).to eq 20

	end
end