require 'checkout'
require 'item'
require 'basket'

describe Checkout do

	it 'knows the total price of the basket' do
		basket = Basket.new
		item = Item.new(3,0)
		item2 = Item.new(1,1)
		basket.accept(LineItem.new(item, 1))
		basket.accept(LineItem.new(item2, 1))
		checkout = Checkout.new(basket)

		expect(checkout.total_price).to eq 4
	end

end