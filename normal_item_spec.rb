require './normal_item.rb'
require "rspec"

describe NormalItem do

  it "normal item should descrease one each day" do
    item = NormalItem.new("item a", 3, 4)
    item.dayPass
    expect(item.quality).to eq(3)
    expect(item.sell_in).to eq(2)
  end

end
