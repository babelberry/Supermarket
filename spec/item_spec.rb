require 'item'

describe Item do

	let(:item) {Item.new(10,1)}
	
	it 'knows its reference' do
		expect(item.reference).to be_a(Fixnum)
	end

	it 'knows its price' do
		expect(item.price).to eq 10
	end

	it 'knows its promotional code' do
		expect(item.promotional_code).to eq 1
	end


end