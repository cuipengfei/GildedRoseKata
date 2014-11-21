require './fast_item.rb'
require "rspec"

describe FastItem do

  it "fast item should decrease twice as fast" do

    item = FastItem.new("item d", 3, 20)

    3.times { item.dayPass }

    expect(item.quality).to eq(14)
    expect(item.sell_in).to eq(0)

    item.dayPass

    expect(item.quality).to eq(10)
    expect(item.sell_in).to eq(0)
  end

end
