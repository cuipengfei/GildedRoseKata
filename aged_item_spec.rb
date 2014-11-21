require './aged_item.rb'
require "rspec"

describe NormalItem do

  it "aged item should increase" do
    item = AgedItem.new("item b", 5, 4)
    item.dayPass

    expect(item.quality).to eq(5)
    expect(item.sell_in).to eq(4)
  end

end
