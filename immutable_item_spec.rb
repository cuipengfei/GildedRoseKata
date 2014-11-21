require './immutable_item.rb'
require "rspec"

describe ImmutableItem do

  it "immutable item should not change at all" do
    item = ImmutableItem.new("item a", 2, 5)
    5.times { |_| item.dayPass }

    expect(item.sell_in).to eq(2)
    expect(item.quality).to eq(5)

    50.times { |_| item.dayPass }

    expect(item.sell_in).to eq(2)
    expect(item.quality).to eq(5)

    500.times { |_| item.dayPass }

    expect(item.sell_in).to eq(2)
    expect(item.quality).to eq(5)
  end

end
