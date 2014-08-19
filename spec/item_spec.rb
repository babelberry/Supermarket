require 'item'

describe Item do
	
	it 'knows its reference' do
		item = Item.new(10)
		expect(item.reference).to be_a(Fixnum)
	end

	it 'knows its price' do
		item = Item.new(10)
		expect(item.price).to eq 10
	end
end