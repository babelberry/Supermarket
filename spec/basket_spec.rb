require 'basket'

describe Basket do

	let(:basket) {Basket.new}
	let(:item) { Item.new(10,1) }


	it "knows it has no items in the basket" do
	expect(basket).not_to have_items
	end

	it "knows it has items in the basket" do
		basket.accept(item)
		expect(basket).to have_items
	end

	it 'returns the items' do
		basket.accept(item)
		expect(basket.items).to eq [item]
	end

	it 'calculates the total' do
		basket.accept(LineItem.new(item, 2))
		basket.accept(LineItem.new(item, 6))
		expect(basket.total).to eq 80
	end

end