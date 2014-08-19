require 'basket'

describe Basket do

	let(:basket) {Basket.new}
	let(:item) {double :item}


	it "knows it has no items in the basket" do
	expect(basket).not_to have_items
	end

	it "knows it has items in the basket" do
	basket.accept(item)
	expect(basket).to have_items
	end


end