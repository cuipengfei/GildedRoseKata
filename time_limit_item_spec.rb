require './time_limit_item.rb'
require "rspec"

describe TimeLimitItem do

  it "time limit item should increase according to time slots" do

    item = TimeLimitItem.new("item c", 3, 20, {2 => 2, 1 => 3})

    item.dayPass

    expect(item.quality).to eq(21)
    expect(item.sell_in).to eq(2)

    item.dayPass

    expect(item.quality).to eq(23)
    expect(item.sell_in).to eq(1)

    item.dayPass

    expect(item.quality).to eq(26)
    expect(item.sell_in).to eq(0)
  end

  it "time limit item should be worthless after date" do

    item = TimeLimitItem.new("item c", 3, 20, {2 => 2, 1 => 3})

    4.times { item.dayPass }
    expect(item.sell_in).to eq(0)
    expect(item.quality).to eq(0)
  end

end
