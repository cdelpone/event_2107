require 'spec_helper'

RSpec.describe Item do
  it 'exists with attributes' do
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})

    expect(item1).to be_an Item

    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})

    expect(item2.name).to eq("Apple Pie (Slice)")

    expect(item2.price).to eq(2.50)
  end
end
