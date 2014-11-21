require './normal_item.rb'
require "rspec"

describe NormalItem do

  it "normal item should descrease one each day" do
    item = NormalItem.new("item a", 3, 4)
    item.dayPass
    expect(item.quality).to eq(3)
    expect(item.sell_in).to eq(2)
  end

  it "normal item should descrease twice as fast after sell in date" do
    item = NormalItem.new("item a", 5, 10)
    6.times { |num| item.dayPass }

    expect(item.quality).to eq(3)
    expect(item.sell_in).to eq(0)
  end

  it "normal item should never have quality less than zero" do
    item = NormalItem.new("item a", 5, 4)
    5.times { |num| item.dayPass }

    expect(item.quality).to eq(0)
    expect(item.sell_in).to eq(0)
  end

end
